package com.shopbetho.shop.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.shopbetho.shop.entity.Blog;
import com.shopbetho.shop.repository.BlogRepository;

@Service
public class BlogService {

    private final BlogRepository blogRepository;

    public BlogService(BlogRepository blogRepository) {
        this.blogRepository = blogRepository;
    }

    public Blog createBlog(Blog blog) {
        return this.blogRepository.save(blog);
    }

    public Blog updateBlog(Blog blog) {
        Blog updateBlog = this.blogRepository.findById(blog.getId()).get();
        updateBlog.setTitle(blog.getTitle());
        updateBlog.setDescription(blog.getDescription());

        return this.blogRepository.save(updateBlog);
    }

    public Blog fetchById(Long id) {
        return this.blogRepository.findById(id).get();
    }

    public Page<Blog> fetchAll(Pageable pageable) {
        return this.blogRepository.findAll(pageable);
    }

    void deleteProduct(Long id) {
        this.blogRepository.deleteById(id);
    }
}
