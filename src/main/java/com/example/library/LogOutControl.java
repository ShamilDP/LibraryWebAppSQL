package com.example.library;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LogOutControl {
    @GetMapping("/log")
    public String form(Model model, HttpServletRequest request) {

        return "redirect:/index";
    }

    @PostMapping("/log")
    public String submit(HttpServletRequest request,Model model) {
        HttpSession session=request.getSession(false);
        session.invalidate();

        return "redirect:/index";
    }
}
