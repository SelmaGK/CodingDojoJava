package com.example.Counter.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class CounterController {

    @GetMapping("/")
    public String index(HttpSession session) {
        if (session.getAttribute("count") == null) {
            session.setAttribute("count", 0);
        }
        int count = (int) session.getAttribute("count");
        session.setAttribute("count", ++count);
        return "index.jsp";
    }

    @GetMapping("/counter")
    public String counter(HttpSession session, Model model) {
        Integer count = (Integer) session.getAttribute("count");
        model.addAttribute("count", count == null ? 0 : count);
        return "counter.jsp";
    }

    @GetMapping("/incrementBy2")
    public String incrementBy2(HttpSession session) {
        if (session.getAttribute("count") == null) {
            session.setAttribute("count", 0);
        }
        int count = (int) session.getAttribute("count");
        session.setAttribute("count", count + 2);
        return "index.jsp";
    }

    @GetMapping("/reset")
    public String reset(HttpSession session) {
        session.setAttribute("count", 0);
        return "redirect:/counter";
    }
}
