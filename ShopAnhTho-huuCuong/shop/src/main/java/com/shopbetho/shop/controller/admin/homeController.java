package com.shopbetho.shop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class homeController {

    @GetMapping("/admin")
    public String getHomePage() {
        return "admin/dashboard/showPage";
    }

}
