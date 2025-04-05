package com.shopbetho.shop.entity;

import java.util.List;

import jakarta.persistence.*;

@Entity
public class Color extends BaseEntity {

    private String name;


    @ElementCollection
    @CollectionTable(name = "color_images", joinColumns = @JoinColumn(name = "color_id"))
    @Column(name = "image_url")
    private List<String> imageUrl;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(List<String> imageUrl) {
        this.imageUrl = imageUrl;
    }

}
