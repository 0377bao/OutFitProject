package com.shopbetho.shop.controller.admin;

import com.shopbetho.shop.entity.Blog;
import com.shopbetho.shop.entity.Product;
import com.shopbetho.shop.service.BlogService;
import com.shopbetho.shop.service.CloudinaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
public class ABlogController {
    @Autowired
    private BlogService blogService;

    @Autowired
    private CloudinaryService cloudinaryService;

    @GetMapping("/admin/blog/dashboard")
    public String showDashboardBlogPage(Model model, @RequestParam(defaultValue = "1") int page) {
        Pageable pageable = PageRequest.of(page - 1, 2);
        Page<Blog> products = this.blogService.fetchAll(pageable);
        model.addAttribute("blogs", products);
        return "admin/dashboard/dashboardBlog";
    }

    @GetMapping("/admin/blog/create")
    public String showCreateBlogPage() {
        return "admin/blog/createPage";
    }
    @GetMapping("/admin/blog/update/{id}")
    public String showUpdateBlogPage(
            @PathVariable("id") Long id,
            Model model
    ) {
        model.addAttribute("blog", blogService.fetchById(id));
        return "admin/blog/updatePage";
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
        return "redirect:/admin";
    }
    @PostMapping("/admin/blog/update")
    public String updateBlog(
                             @RequestParam("id") Long id,
                             @RequestParam("title") String title,
                             @RequestParam("content") String content,
                             @RequestParam("description") String description,
                             @RequestParam("image") MultipartFile image,
                             Model model) throws IOException {
        if( id == null || title.isEmpty() || content.isEmpty() || description.isEmpty()) {
            model.addAttribute("error", "Please fill in all fields.");
            return "redirect:/admin/blog/update";
        }
        Blog blog = new Blog();
        blog.setId(id);
        blog.setTitle(title);
        blog.setContent(content);
        blog.setDescription(description);
        // Handle file upload and set the image URL
        if (!image.isEmpty()) {
            String imageUrl = cloudinaryService.upLoadImage(image);
            blog.setImageUrl(imageUrl);
        }
        System.out.println(blog);
        blogService.updateBlog(blog);
        return "redirect:/admin";
    }
}
