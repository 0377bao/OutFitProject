package com.shopbetho.shop.controller.admin;

import com.shopbetho.shop.entity.Blog;
import com.shopbetho.shop.service.BlogService;
import com.shopbetho.shop.service.CloudinaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
public class ABlogController {
    @Autowired
    private BlogService blogService;

    @Autowired
    private CloudinaryService cloudinaryService;

    @GetMapping("/admin/blog/create")
    public String showCreateBlogPage() {
        return "admin/blog/createPage";
    }

    // Example method to handle blog creation
    @PostMapping("/admin/blog/create")
    public String createBlog(@RequestParam("title") String title,
                             @RequestParam("content") String content,
                             @RequestParam("description") String description,
                             @RequestParam("image") MultipartFile image,
                             Model model) throws IOException {
        if(title.isEmpty() || content.isEmpty() || description.isEmpty()) {
            model.addAttribute("error", "Please fill in all fields.");
            return "redirect:/admin/blog/create";
        }
        Blog blog = new Blog();
        blog.setTitle(title);
        blog.setContent(content);
        blog.setDescription(description);
        // Handle file upload and set the image URL
        if (!image.isEmpty()) {
            String imageUrl = cloudinaryService.upLoadImage(image);
            blog.setImageUrl(imageUrl);
        }
        blogService.createBlog(blog);
        return "redirect:/index";
    }
}
