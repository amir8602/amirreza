package com.amir.controllers;

import com.amir.models.ProductDTO;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;


@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    Logger logger;

    ArrayList<ProductDTO> list = new ArrayList<ProductDTO>() {
        {
            add(new ProductDTO(1, "a", 1000, "home"));
            add(new ProductDTO(2, "b", 2000, "work"));
        }
    };


    @GetMapping("/show")
    public String show(@ModelAttribute("dto") ProductDTO productDTO) {
        return "product-show";
    }

    @PostMapping("/save")
    public String save(@Valid @ModelAttribute("dto") ProductDTO productDTO, BindingResult result) {
        if (result.hasErrors()) {
            //Post Back
            return "product-show";
        }
        logger.debug(productDTO);
        //TODO: persist to database
        return "redirect:/";
    }

    @GetMapping("/get-all")
    public String getAll(Model model) {
        model.addAttribute("products", list);
        return "product-list";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") int id) {
        logger.debug(id);
        list.get(0);
        return "product-detail";
    }


}
