package com.amir.controllers;

import com.amir.entities.Product;
import com.amir.models.ProductDTO;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;


@Controller
@RequestMapping("/product")
public class ProductController {

    Logger logger = Logger.getLogger(ProductController.class);
    ArrayList <ProductDTO> list = new ArrayList<ProductDTO>(){
        {
            add(new ProductDTO(1,"a",1000,"home"));
            add(new ProductDTO(2,"b",2000,"work"));
        }
    };


    @GetMapping("/show")
    public String show(@ModelAttribute("dto") ProductDTO productDTO){
        return "product-show";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("dto")ProductDTO productDTO){
        logger.debug(productDTO);
        //TODO: persist to database
        return "redirect:/";
    }

    @GetMapping("/get-all")
    public String getAll(Model model){
        model.addAttribute("products" , list);
        return "product-list";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") int id){
        logger.debug(id);
        list.get(0);
        return "product-detail";
    }



}
