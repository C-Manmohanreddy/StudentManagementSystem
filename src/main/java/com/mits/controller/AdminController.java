package com.mits.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

    // Display the settings panel
    @GetMapping("/admin/settings")
    public String showSettingsPage(Model model) {
        // Hardcoded admin data for demonstration
        model.addAttribute("adminName", "System Administrator");
        model.addAttribute("adminEmail", "admin@mits.com");
        return "admin_settings"; // Resolves to WEB-INF/views/admin_settings.jsp
    }

    // Process security password changes
    @PostMapping("/admin/updatePassword")
    public String updatePassword(
            @RequestParam("currentPassword") String current,
            @RequestParam("newPassword") String newPass,
            @RequestParam("confirmPassword") String confirm,
            Model model) {
        
        if (!newPass.equals(confirm)) {
            model.addAttribute("error", "New passwords do not match!");
            model.addAttribute("adminName", "System Administrator");
            model.addAttribute("adminEmail", "admin@mits.com");
            return "admin_settings";
        }
        
        model.addAttribute("success", "Password updated successfully!");
        model.addAttribute("adminName", "System Administrator");
        model.addAttribute("adminEmail", "admin@mits.com");
        return "admin_settings";
    }
}