package com.shopbetho.shop.controller.admin;

import com.shopbetho.shop.entity.Banner;
import com.shopbetho.shop.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class homeController {
    @Autowired
    private BannerService bannerService;
    @GetMapping("/admin")
    public String getHomePage() {
        return "admin/dashboard/showPage";
    }

    @GetMapping("/index")
    public String indexPage(Model model) {
        Banner banner = bannerService.findTopByOrderByCreatedAtDesc();
        model.addAttribute("banners", banner);
        return "index";
    }

}
