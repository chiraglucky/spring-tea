package com.example.springtea.Controller;

import com.example.springtea.Model.User;
import com.example.springtea.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
public class UserController {

    @Autowired
    UserService userService;

    @PostMapping("/registration")
    public ResponseEntity<Object> registration(@RequestBody User user){
        User u = this.userService.registerUser(user);
        if(u!=null){
            return new ResponseEntity<>(u, HttpStatus.OK);
        }
        return new ResponseEntity<>("Wrong username",HttpStatus.BAD_REQUEST);
    }

    @PostMapping("/login")
    public ResponseEntity<Object> login(@RequestBody User user){
        User u = this.userService.login(user.getUsername());
        if(u!=null){
            if(u.getPassword().equals(user.getPassword())){
                System.out.println(u);
                return new ResponseEntity<>(u,HttpStatus.OK);
            }else{
                return new ResponseEntity<>("Wrong password",HttpStatus.BAD_REQUEST);
            }
        }
        return new ResponseEntity<>("Wrong username",HttpStatus.BAD_REQUEST);
    }

}
