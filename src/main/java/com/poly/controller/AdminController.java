package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

    @GetMapping("/admin")
    public String admin() {
        return "/admin/loginadmin";
    }

    @PostMapping("/admin/login")
    public String login(@RequestParam String tk, @RequestParam String mk, Model model) {
        if ("admin".equals(tk) && "admin".equals(mk)) {
            return "redirect:/admin/indexadmin";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "admin/loginadmin";
        }
    }

    @GetMapping("/admin/indexadmin")
    public String indexAdmin() {
        return "admin/indexadmin";
    }
    
    @GetMapping("/cv")
    public String showCVPage() {
        return "admin/cv";
    }
    
    @GetMapping("/nhanvien")
    public String showNhanVienPage() {
    	return "admin/nhanvien";
    }
    
    @GetMapping("/ungvien")
    public String showUngVienPage() {
    	return "admin/ungvien";
    }
    @GetMapping("/loaicv")
    public String showLoaiCVPage() {
    	return "admin/loaicv";
    }
    @GetMapping("/nhatuyendung")
    public String showNhaTuyenDungPage() {
    	
    	return "admin/nhatuyendung";
    }
}

