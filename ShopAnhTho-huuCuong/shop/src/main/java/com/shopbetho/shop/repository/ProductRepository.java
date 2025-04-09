package com.shopbetho.shop.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.shopbetho.shop.entity.Product;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    Page<Product> findAll(Pageable pageable);
    List<Product> findByIsHighlightTrue();
    List<Product> findByIsNewTrue();
    List<Product> findByIsActiveTrue();
}
