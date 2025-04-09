package com.shopbetho.shop.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

import com.shopbetho.shop.entity.Product;
import com.shopbetho.shop.service.ProductService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/products")
    public String fetchAllProducts(Model model,
            @RequestParam(defaultValue = "1", name = "page") int page) {

        Pageable pageable = PageRequest.of(page - 1, 2);

        Page<Product> products = this.productService.fetchAll(pageable);
        model.addAttribute("products", products);
        return "client/product/showPage";
    }

    @GetMapping("/products/{id}")
    public String getMethodName(@PathVariable("id") Long id, Model model) {
        Product product = this.productService.fetchById(id);
        model.addAttribute("product", product);
        return "client/product/detailPage";
    }

}
