package com.shopbetho.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.shopbetho.shop.entity.Product;

@Controller
public class ProductController {

    @PostMapping("admin/product/create")
    public String postMethodName(Model model,
            @ModelAttribute("product") Product product) {

        return null;
    }

}
