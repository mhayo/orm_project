package org.akad.mhayo.orm_project.mybatis_module.controller;

import org.akad.mhayo.orm_project.mybatis_module.dto.CartDTO;
import org.akad.mhayo.orm_project.mybatis_module.model.CartRequest;
import org.akad.mhayo.orm_project.mybatis_module.model.Item;
import org.akad.mhayo.orm_project.mybatis_module.service.ItemService;
import org.akad.mhayo.orm_project.util.exceptions.CartNotFoundException;
import org.akad.mhayo.orm_project.util.exceptions.ItemException;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.akad.mhayo.orm_project.mybatis_module.service.CartService;
import org.akad.mhayo.orm_project.mybatis_module.model.Cart;

import java.util.List;
import java.util.stream.IntStream;

@RestController
@RequestMapping("/api")
public class CartController {

    @Autowired
    CartService cartService;

    @Autowired
    ItemService itemService;


    @GetMapping("/cart")
    public List<CartDTO> getAllCarts(){

        return cartService.getAllCarts().stream().map(this::convertEntityToDTO).toList();
    }

    @PostMapping("/addToCart")
    public ResponseEntity<CartDTO> addToCart(@RequestBody CartRequest cartRequest){


        try{

            Cart cart = cartService.getCartById(cartRequest.getCartid());
            Item item = itemService.getItemById(cartRequest.getItemid());

            IntStream.range(0, cartRequest.getQuantity()).forEach(i -> cart.addItem(item));
            cartService.update(cart);

            return ResponseEntity.ok(convertEntityToDTO(cart));

        }catch (CartNotFoundException | ItemException notfound){
            ResponseEntity.notFound().build();
        }

        return ResponseEntity.badRequest().build();
    }


    // DTO Conversion

    public Cart convertCartDTOToEntity(CartDTO cartDTO){

        Cart cart = new Cart();

        BeanUtils.copyProperties(cartDTO,cart);

        return cart;
    }


    public CartDTO convertEntityToDTO(Cart cart){

        CartDTO cartDTO = new CartDTO();

        BeanUtils.copyProperties(cart,cartDTO);

        return cartDTO;
    }

}