package com.shopbetho.shop.controller.admin;

import com.shopbetho.shop.entity.Product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

    @PostMapping("/admin/product/create")
    public String createProduct(
            @ModelAttribute Product product,
            @RequestParam("avatarFile") MultipartFile avatarFile) {
        return "admin/product/createPage";
    }

}
