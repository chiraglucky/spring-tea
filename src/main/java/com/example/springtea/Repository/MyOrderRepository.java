package com.example.springtea.Repository;

import com.example.springtea.Model.MyOrder;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MyOrderRepository extends JpaRepository<MyOrder,Long> {
    MyOrder findByOrderId(String orderId);
}
