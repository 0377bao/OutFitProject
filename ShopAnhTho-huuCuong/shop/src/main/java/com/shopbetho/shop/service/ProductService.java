package com.shopbetho.shop.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.shopbetho.shop.entity.Product;
import com.shopbetho.shop.repository.ProductRepository;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product createProduct(Product product) {
        return this.productRepository.save(product);
    }

    public Product updateProduct(Product product) {
        Product updateProduct = this.productRepository.findById(product.getId()).get();
        updateProduct.setName(product.getName());
        updateProduct.setCatalogue(product.getCatalogue());
        updateProduct.setDescription(product.getDescription());

        return this.productRepository.save(updateProduct);
    }

    public Product fetchById(Long id) {
        return this.productRepository.findById(id).get();
    }

    public Page<Product> fetchAll(Pageable pageable) {
        return this.productRepository.findAll(pageable);
    }

    void deleteProduct(Long id) {
        this.productRepository.deleteById(id);
    }
}
