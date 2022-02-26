package com.amir.controllers;

import com.amir.entities.Product;
import com.amir.models.ProductDTO;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;



@Controller
@RequestMapping("/product")
public class ProductController {

    Logger logger = Logger.getLogger(ProductController.class);


    @GetMapping("/show")
    public String show(){
        return "product-show";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("dto")ProductDTO productDTO){
        logger.debug(productDTO);
        return "redirect:/";
    }

}
