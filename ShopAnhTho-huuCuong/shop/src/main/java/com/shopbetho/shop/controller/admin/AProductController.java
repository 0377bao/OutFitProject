package com.shopbetho.shop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AProductController {

    @GetMapping("/admin/product")
    public String getDashboardPage() {
        return "admin/product/showPage";
    }

    @GetMapping("/admin/product/create")
    public String getCreatePage() {
        return "admin/product/createPage";
    }

}
