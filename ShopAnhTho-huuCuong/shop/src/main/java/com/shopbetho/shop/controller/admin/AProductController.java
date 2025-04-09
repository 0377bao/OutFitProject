package com.shopbetho.shop.controller.admin;

import com.shopbetho.shop.contant.catalogueEnum;
import com.shopbetho.shop.entity.Color;
import com.shopbetho.shop.entity.Product;
import com.shopbetho.shop.service.CloudinaryService;
import com.shopbetho.shop.service.ProductService;
import org.hibernate.engine.jdbc.Size;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    @GetMapping("/admin/product")
    public String getDashboardPage() {
        return "admin/product/showPage";
    }

    @GetMapping("/admin/product/create")
    public String getCreatePage() {
        return "admin/product/createPage";
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
        return "admin/product/createPage";
    }

}
