package com.shopbetho.shop.controller.admin;

import com.shopbetho.shop.contant.catalogueEnum;
import com.shopbetho.shop.entity.Color;
import com.shopbetho.shop.entity.Product;
import com.shopbetho.shop.service.CloudinaryService;
import com.shopbetho.shop.service.EmailService;
import com.shopbetho.shop.service.ProductService;
import org.hibernate.engine.jdbc.Size;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.xml.catalog.Catalog;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class AProductController {
    @Autowired
    private CloudinaryService cloudinaryService;
    @Autowired
    private ProductService productService;
    @Autowired
    private EmailService emailService;
    @GetMapping("/admin/product")
    public String getDashboardPage() {
        return "admin/product/showPage";
    }

    @GetMapping("/admin/product/create")
    public String getCreatePage() {
        return "admin/product/createPage";
    }

    @GetMapping("/admin/product/update/{id}")
    public String getUpdatePage(
            @PathVariable("id") Long id,
            Model model
    ) {
        model.addAttribute("product", productService.fetchById(id));
        return "admin/product/updatePage";
    }

    @PostMapping("/admin/product/create")
    public String createProduct(
            @RequestParam("name") String name,
            @RequestParam("code") String code,
            @RequestParam("description") String description,
            @RequestParam("catalogue") String catalogue,
            @RequestParam(defaultValue = "true", name = "isHighlight") boolean isHighlight,
            @RequestParam(defaultValue = "true", name = "isNew") boolean isNew,
            @RequestParam(defaultValue = "true", name = "isActive") boolean isActive,
            @RequestParam("price") double price,
            @RequestParam("sizes") List<String> sizes,
            @RequestParam("numberColor") int numberColor,
            @RequestParam("avatarColors") List<MultipartFile> avatarColors,
            @RequestParam("colorNames") List<String> colorNames,
            @RequestParam Map<String, MultipartFile> fileMap,
            Model model
            ) throws IOException {
        if(name.isEmpty() || code.isEmpty() || description.isEmpty() || catalogue.isEmpty() || sizes.isEmpty() || numberColor <= 0) {
            model.addAttribute("error", "Please fill in all required fields.");
            return "admin/product/createPage";
        }
        if (avatarColors.size() != numberColor || colorNames.size() != numberColor) {
            model.addAttribute("error", "Number of colors and their details do not match.");
            return "admin/product/createPage";
        }
        if(price <= 0) {
            model.addAttribute("error", "Price must be greater than 0.");
            return "admin/product/createPage";
        }
        Product product = new Product();
        product.setName(name);
        product.setCode(code);
        product.setDescription(description);
        product.setCatalogue(catalogueEnum.valueOf(catalogue));
        product.setHighlight(isHighlight);
        product.setNew(isNew);
        product.setActive(isActive);
        product.setPrice(price);
        product.setSizes(sizes);
        List<Color> colorEntities = new ArrayList<>();
        for (int i = 0; i < numberColor; i++) {
            Color color = new Color();
            color.setName(colorNames.get(i));
            String urlAvt = cloudinaryService.upLoadImage(avatarColors.get(i));
            color.setAvtColor(urlAvt);

            List<String> imageUrls = new ArrayList<>();
            for (int j = 0; j < 5; j++) {
                String key = "colorImages[" + i + "][" + j + "]";
                MultipartFile image = fileMap.get(key);

                if (image != null && !image.isEmpty()) {
                    imageUrls.add(cloudinaryService.upLoadImage(image));
                }
            }
            color.setImageUrl(imageUrls);
            colorEntities.add(color);
        }
        product.setColors(colorEntities);

        productService.createProduct(product);
        return "redirect:/admin";
    }

    @PostMapping("/admin/product/update")
    public String updateProduct(
            @RequestParam("id") Long id,
            @RequestParam("name") String name,
            @RequestParam("code") String code,
            @RequestParam("description") String description,
            @RequestParam("catalogue") String catalogue,
            @RequestParam(defaultValue = "true", name = "isHighlight") boolean isHighlight,
            @RequestParam(defaultValue = "true", name = "isNew") boolean isNew,
            @RequestParam(defaultValue = "true", name = "isActive") boolean isActive,
            @RequestParam("price") double price,
            @RequestParam("sizes") List<String> sizes,
            @RequestParam("numberColor") int numberColor,
            @RequestParam("avatarColors") List<MultipartFile> avatarColors,
            @RequestParam("colorNames") List<String> colorNames,
            @RequestParam Map<String, MultipartFile> fileMap,
            Model model
    ) throws IOException {
        if( id == null || name.isEmpty() || code.isEmpty() || description.isEmpty() || catalogue.isEmpty() || sizes.isEmpty() || numberColor <= 0) {
            model.addAttribute("error", "Please fill in all required fields.");
            return "redirect:/admin/product/updatePage";
        }
        if (avatarColors.size() != numberColor || colorNames.size() != numberColor) {
            model.addAttribute("error", "Number of colors and their details do not match.");
            return "redirect:/admin/product/updatePage";
        }
        if(price <= 0) {
            model.addAttribute("error", "Price must be greater than 0.");
            return "redirect:/admin/product/updatePage";
        }
        Product product = new Product();
        product.setId(id);
        product.setName(name);
        product.setCode(code);
        product.setDescription(description);
        product.setCatalogue(catalogueEnum.valueOf(catalogue));
        product.setHighlight(isHighlight);
        product.setNew(isNew);
        product.setActive(isActive);
        product.setPrice(price);
        product.setSizes(sizes);
        List<Color> colorEntities = new ArrayList<>();
        for (int i = 0; i < numberColor; i++) {
            Color color = new Color();
            color.setName(colorNames.get(i));
            String urlAvt = cloudinaryService.upLoadImage(avatarColors.get(i));
            color.setAvtColor(urlAvt);

            List<String> imageUrls = new ArrayList<>();
            for (int j = 0; j < 5; j++) {
                String key = "colorImages[" + i + "][" + j + "]";
                MultipartFile image = fileMap.get(key);

                if (image != null && !image.isEmpty()) {
                    imageUrls.add(cloudinaryService.upLoadImage(image));
                }
            }
            color.setImageUrl(imageUrls);
            colorEntities.add(color);
        }
        product.setColors(colorEntities);

        productService.updateProduct(product);
        return "redirect:/admin";
    }
    @PostMapping("/admin/product/order")
    public String orderProduct(
            @RequestParam("productId") Long productId,
            @RequestParam("productName") String productName,
            @RequestParam("total") int total,
            @RequestParam("price") double price,
            @RequestParam("color") String color,
            @RequestParam("size") String size,
            @RequestParam("nameCustomer") String nameCustomer,
            @RequestParam("sdt") String sdt,
            @RequestParam("address") String address,
            @RequestParam("emailAdmin") String emailAdmin,
            Model model
    ) {
        // Validate input data
        if (productId == null || productName.isEmpty() || total <= 0 || price <= 0 || color.isEmpty() || size.isEmpty() || nameCustomer.isEmpty() || sdt.isEmpty() || address.isEmpty() || emailAdmin.isEmpty()) {
            model.addAttribute("error", "Please fill in all required fields.");
            return "redirect:/";
        }
        String messageSendEmail =
                "Product ID: " + productId + "\n" +
                "Product Name: " + productName + "\n" +
                "Total: " + total + "\n" +
                "Price: " + price + "\n" +
                "Color: " + color + "\n" +
                "Size: " + size + "\n" +
                "Customer Name: " + nameCustomer + "\n" +
                "Phone Number: " + sdt + "\n" +
                "Address: " + address;
        // Send email to admin
        emailService.sendOrder(emailAdmin, messageSendEmail);
        model.addAttribute("success", "Order placed successfully. We will contact you soon.");
        // Redirect to a success page or show a success message
        return "redirect:/index";
    }
}
