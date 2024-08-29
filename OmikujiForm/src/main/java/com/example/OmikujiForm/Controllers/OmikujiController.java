package com.example.OmikujiForm.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class OmikujiController {

    @GetMapping("/omikuji")
    public String omikujiForm() {
        return "omikujiForm.jsp";
    }

    @PostMapping("/processOmikuji")
    public String processOmikuji(HttpSession session, 
                                 String number, 
                                 String city, 
                                 String realPerson, 
                                 String hobby, 
                                 String livingThing, 
                                 String niceMessage) {
        session.setAttribute("number", number);
        session.setAttribute("city", city);
        session.setAttribute("realPerson", realPerson);
        session.setAttribute("hobby", hobby);
        session.setAttribute("livingThing", livingThing);
        session.setAttribute("niceMessage", niceMessage);
        return "redirect:/omikuji/show";
    }

    @GetMapping("/omikuji/show")
    public String showOmikuji(HttpSession session, Model model) {
        model.addAttribute("number", session.getAttribute("number"));
        model.addAttribute("city", session.getAttribute("city"));
        model.addAttribute("realPerson", session.getAttribute("realPerson"));
        model.addAttribute("hobby", session.getAttribute("hobby"));
        model.addAttribute("livingThing", session.getAttribute("livingThing"));
        model.addAttribute("niceMessage", session.getAttribute("niceMessage"));
        return "omikujiShow.jsp";
    }
}
