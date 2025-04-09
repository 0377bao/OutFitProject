package com.shopbetho.shop.controller.admin;

import com.shopbetho.shop.entity.Banner;
import com.shopbetho.shop.service.BannerService;
import com.shopbetho.shop.service.CloudinaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Map;

@Controller
public class BannerController {
    @Autowired
    private CloudinaryService cloudinaryService;
    @Autowired
    private BannerService bannerService;
    @GetMapping("/admin/banner/create")
    public String getCreatePage() {
        return "admin/banner/createPage";
    }
    @PostMapping("admin/banner/create")
    public String createBanner(@RequestParam("image1") MultipartFile image1,
                               @RequestParam("image2") MultipartFile image2) throws IOException {

        Banner banner = new Banner();

        if (!image1.isEmpty()) {
            String firstBanner = cloudinaryService.upLoadImage(image1);
            banner.setFirstBanner(firstBanner);
        }

        if (!image2.isEmpty()) {
            String secondBanner = cloudinaryService.upLoadImage(image2);
            banner.setSecondBanner(secondBanner);
        }

        bannerService.save(banner);

        return "redirect:/index";
    }
}
