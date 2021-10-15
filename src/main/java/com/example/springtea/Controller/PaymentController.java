package com.example.springtea.Controller;

import com.example.springtea.Model.MyOrder;
import com.example.springtea.Model.Query;
import com.example.springtea.Model.User;
import com.example.springtea.Repository.MyOrderRepository;
import com.example.springtea.Repository.QueryRepository;
import com.example.springtea.Repository.UserRepository;
import com.example.springtea.Service.UserService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.razorpay.*;

import java.util.Map;

@RestController
@CrossOrigin
public class PaymentController {

    @Autowired
    MyOrderRepository myOrderRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    QueryRepository queryRepository;

    //creating order for payment
    @PostMapping("/{uid}/order")
    public String createOrder(@PathVariable String uid, @RequestBody Map<String,Object> data) throws RazorpayException {

        int amount=Integer.parseInt(data.get("amount").toString());
        RazorpayClient client=new RazorpayClient("rzp_test_AdZ3n8xBWF6JmT","LFczhTxZFX2nXdNPQXJYGh2r");

        JSONObject options=new JSONObject();
        options.put("amount",amount*100);
        options.put("currency","INR");
        options.put("receipt","txn_232221");

        //creating new order
        Order o = client.Orders.create(options);

        //save order into database
        System.out.println(o);
        MyOrder myOrder =new MyOrder();
        myOrder.setAmount(o.get("amount")+"");
        myOrder.setOrderId(o.get("id"));
        myOrder.setStatus("created");
        myOrder.setUser(userRepository.getById(Long.parseLong(uid)));
        myOrder.setReceipt(o.get("receipt"));
        this.myOrderRepository.save(myOrder);

        return o.toString();
    }

    @PostMapping("/{uId}/success")
    public ResponseEntity<Object> updateOrder(@PathVariable String uId,@RequestBody Map<String,Object> data){
        MyOrder myOrder=this.myOrderRepository.findByOrderId(data.get("orderId").toString());
        myOrder.setRzrpaymentId(data.get("rzrPaymentId").toString());
        myOrder.setRzrSignature(data.get("rzrSignature").toString());
        myOrder.setStatus("paid");
        this.myOrderRepository.save(myOrder);
        return new ResponseEntity<>("success", HttpStatus.OK);
    }

    //User Query
    @PostMapping("/{uId}/query")
    public ResponseEntity<Object> sendQuery(@PathVariable String uId,@RequestBody Map<String,String> data){
        Query query=new Query();
        query.setFullName(data.get("fullName"));
        query.setEmail(data.get("email"));
        query.setText(data.get("text"));
        query.setUser(userRepository.getById(Long.parseLong(uId)));
        this.queryRepository.save(query);
        return new ResponseEntity<>("success",HttpStatus.OK);
    }
}
