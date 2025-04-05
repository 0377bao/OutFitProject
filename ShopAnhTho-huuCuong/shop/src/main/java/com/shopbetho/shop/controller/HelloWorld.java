package com.shopbetho.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.shopbetho.shop.entity.Blog;

@Controller
public class HelloWorld {
    @GetMapping("/")
    public String helloWorld(Model model) {
        Blog blog = new Blog();
        model.addAttribute("blog", blog);
        return "index";
    }

}
