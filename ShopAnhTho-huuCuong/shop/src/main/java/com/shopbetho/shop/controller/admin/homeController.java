package com.shopbetho.shop.controller.admin;

import com.shopbetho.shop.entity.Banner;
import com.shopbetho.shop.entity.Blog;
import com.shopbetho.shop.entity.Collection;
import com.shopbetho.shop.entity.Product;
import com.shopbetho.shop.service.BannerService;
import com.shopbetho.shop.service.BlogService;
import com.shopbetho.shop.service.CollectionService;
import com.shopbetho.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class homeController {
    @Autowired
    private BannerService bannerService;
    @Autowired
    private CollectionService collectionService;
    @Autowired
    private BlogService blogService;
    @Autowired
    private ProductService productService;
    @GetMapping("/admin")
    public String getHomePage() {
        return "admin/dashboard/showPage";
    }

    @GetMapping("/index")
    public String indexPage(Model model) {
        Banner banner = bannerService.findTopByOrderByCreatedAtDesc();
        Collection collection = collectionService.findTopByOrderByCreatedAtDesc();
        List<Blog> topThreeLogNew = blogService.findTop3ByOrderByCreatedAtDesc();
        List<Product> productsHighLight = productService.findByIsHighlightTrue();
        List<Product> productsNew = productService.findByIsNewTrue();
        model.addAttribute("banners", banner);
        model.addAttribute("collections", collection);
        model.addAttribute("blogs", topThreeLogNew);
        model.addAttribute("productsHighLight", productsHighLight);
        model.addAttribute("productsNew", productsNew);
        return "index";
    }
}
