package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.facebook.api.Account;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.poly.dao.AccountsRepository;

import java.util.Optional;

@Controller
public class UserController {
    @Autowired
    private AccountsRepository accountRepository;

    @RequestMapping("/user")
    public String user() {
        return "user/indexuser";
    }

    @GetMapping("/user/vieclam")
    public String showViecLam() {
        return "user/vieclam"; 
    }
    
    @GetMapping("/user/ketnoi")
    public String showKetnoi() {
        return "/user/ketnoi"; 
    }

    @GetMapping("/user/tintuyendung")
    public String showTintuyendung() {
        return "/user/tintuyendung"; 
    }
    
    @GetMapping("/user/tintuyendung2")
    public String showTintuyendung2() {
        return "/user/tintuyendung2"; 
    }
    
    @GetMapping("/user/congty")
    public String showCongty() {
        return "/user/congty"; 
    }
//    @PostMapping("/user/dangky")
//    public String register(@RequestParam String username, @RequestParam String password) {
//        Account newAccount = new Account();
//        newAccount.setEmail(username);
//        newAccount.setMatKhau(password);
//
//        accountRepository.save(newAccount);
//
//        return "user/indexuser";
//    }

    @PostMapping("/user/login")
    public String login(@RequestParam String email, @RequestParam String matKhau, Model model) {
        Optional<Account> accountOptional = accountRepository.findByUsernameAndPassword(email, matKhau);

        if (accountOptional.isPresent()) {
            // Login successful
            Account loggedInAccount = accountOptional.get();
            
            // You may want to set authentication details or session attributes here
            // For simplicity, let's add the account information to the model
            model.addAttribute("loggedInAccount", loggedInAccount);

            return "user/vieclam";  // Redirect to the dashboard or desired page
        } else {
            // Login failed
            model.addAttribute("loginError", "Invalid email or password");
            return "user/indexuser";  // Redirect to the login page with an error parameter
        }
    } 
}