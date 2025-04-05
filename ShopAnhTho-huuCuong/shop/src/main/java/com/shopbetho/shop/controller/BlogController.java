package com.shopbetho.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.shopbetho.shop.entity.Blog;
import com.shopbetho.shop.service.BlogService;

@Controller
public class BlogController {

    private final BlogService blogService;

    public BlogController(BlogService blogService) {
        this.blogService = blogService;
    }

    @PostMapping("/admin/blog/create")
    public String postMethodName(
            Model model,
            @ModelAttribute("blog") Blog blog) {
        Blog newBlog = this.blogService.createBlog(blog);

        return "redirect:/";
    }

}
