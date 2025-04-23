package com.shopbetho.shop.controller;

import com.shopbetho.shop.entity.AccountAdmin;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.shopbetho.shop.entity.Blog;

@Controller
public class HelloWorld {
    @GetMapping("/")
    public String helloWorld(Model model, HttpSession session) {
        AccountAdmin admin = (AccountAdmin) session.getAttribute("loggedInAdmin");
        if (admin == null) {
            return "redirect:/admin/login";
        }
        Blog blog = new Blog();
        model.addAttribute("blog", blog);
        return "admin/dashboard/showPage";
    }

}
