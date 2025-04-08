package com.shopbetho.shop.entity;

import java.util.List;

import com.shopbetho.shop.contant.catalogueEnum;

import jakarta.persistence.*;

@Entity
public class Product extends BaseEntity {

    private String name;
    private String code;
    private String description;
    private catalogueEnum catalogue;
    private boolean isHighlight;
    private boolean isActive;
    private double price;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Color> colors;

    private String sizes;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public catalogueEnum getCatalogue() {
        return catalogue;
    }

    public void setCatalogue(catalogueEnum catalogue) {
        this.catalogue = catalogue;
    }

    public boolean isHighlight() {
        return isHighlight;
    }

    public void setHighlight(boolean isHighlight) {
        this.isHighlight = isHighlight;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean isActive) {
        this.isActive = isActive;
    }

    public List<Color> getColors() {
        return colors;
    }

    public void setColors(List<Color> colors) {
        this.colors = colors;
    }

    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

}
