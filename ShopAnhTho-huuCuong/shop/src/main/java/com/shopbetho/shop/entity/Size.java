package com.shopbetho.shop.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Size extends BaseEntity {
    private String name;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
