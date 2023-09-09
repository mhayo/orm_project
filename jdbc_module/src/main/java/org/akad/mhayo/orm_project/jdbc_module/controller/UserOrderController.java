package org.akad.mhayo.orm_project.jdbc_module.controller;


import org.akad.mhayo.orm_project.jdbc_module.model.UserOrder;
import org.akad.mhayo.orm_project.jdbc_module.service.UserOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class UserOrderController {

    @Autowired
    UserOrderService userOrderService;

    @PostMapping("/submit/{cartid}")
    public ResponseEntity<UserOrder> submit(@PathVariable long cartid){

        UserOrder userOrder = userOrderService.submit(cartid);

        return ResponseEntity.ok(userOrder);
    }

    @GetMapping("/order/{id}")
    public ResponseEntity<UserOrder> getOrderById(@PathVariable long id){

        UserOrder order = userOrderService.getOrderById(id);

        return ResponseEntity.ok(order);
    }

    @GetMapping("/order")
    public ResponseEntity<List<UserOrder>> getAllOrders(){

        List<UserOrder> userOrders = userOrderService.getAllOrders();

        return ResponseEntity.ok(userOrders);
    }

}
