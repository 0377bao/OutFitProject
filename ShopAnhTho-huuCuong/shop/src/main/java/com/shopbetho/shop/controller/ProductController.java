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

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

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
        DecimalFormatSymbols symbols = new DecimalFormatSymbols();
        symbols.setGroupingSeparator('.'); // Dấu phân cách phần nghìn: chấm
        DecimalFormat formatter = new DecimalFormat("#,###", symbols);;
        model.addAttribute("product", product);
        model.addAttribute("isActive", product.isActive());
        model.addAttribute("price", formatter.format(product.getPrice()));
        model.addAttribute("productLike", productService.findByIsHighlightTrue());
        List<String> urlColor = new ArrayList<>();
        for (int i = 0; i < product.getColors().size(); i++) {
            String joinedImages = "";
            for (int j = 0; j < product.getColors().get(i).getImageUrl().size(); j++) {
                if (j == product.getColors().get(i).getImageUrl().size() - 1) {
                    joinedImages += product.getColors().get(i).getImageUrl().get(j);
                } else {
                    joinedImages += product.getColors().get(i).getImageUrl().get(j) + "&&&";
                }
            }
            urlColor.add(joinedImages);
        };
        model.addAttribute("urlColor", urlColor);
        return "client/product/detailPage";
    }
}
