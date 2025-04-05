package com.shopbetho.shop.controller.admin;

import com.shopbetho.shop.service.AccountAdminService;
import com.shopbetho.shop.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    @Autowired
    private EmailService emailService;
    @Autowired
    private AccountAdminService accountAdminService;
    @PostMapping("/admin/login")
    public String Login(Model model, @RequestParam("email") String email) {
        String regex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";

        if(email.matches(regex)) {
            // Check if the email exists in the database
            if (accountAdminService.findByEmail(email) == null) {
                System.out.println("email not found");
                return "helloWorld";
            }
            int otp = (int)(Math.random() * 900000) + 100000;
            String otpGen = String.valueOf(otp);
            emailService.sendOtpEmail(email, otpGen);
        } else {
            System.out.println("email invalid");
        }
        return "helloWorld";
    };
}
