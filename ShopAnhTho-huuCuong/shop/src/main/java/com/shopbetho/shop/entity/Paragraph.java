package com.shopbetho.shop.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Paragraph extends BaseEntity {

    private String title;

    @Column(columnDefinition = "MEDIUMTEXT")
    private String content;

    private String imageUrl;

    @ManyToOne
    @JoinColumn(name = "blog_id")
    private Blog blog;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

}
