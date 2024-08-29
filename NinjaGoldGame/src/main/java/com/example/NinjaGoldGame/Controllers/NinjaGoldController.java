package com.example.NinjaGoldGame.Controllers;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class NinjaGoldController {

    @GetMapping("/")
    public String index(HttpSession session, Model model) {
        if (session.getAttribute("gold") == null) {
            session.setAttribute("gold", 0);
            session.setAttribute("activities", new ArrayList<String>());
        }

        model.addAttribute("gold", session.getAttribute("gold"));
        model.addAttribute("activities", session.getAttribute("activities"));
        return "index.jsp";
    }

    @PostMapping("/process")
    public String processGold(HttpSession session, @RequestParam String location) {
        int gold = (int) session.getAttribute("gold");
        ArrayList<String> activities = (ArrayList<String>) session.getAttribute("activities");
        Random random = new Random();
        int amount = 0;
        String activity = "";
        String color = "green";
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MMMM d, yyyy h:mm a");

        switch (location) {
            case "farm":
                amount = random.nextInt(11) + 10;
                activity = String.format("You entered a farm and earned %d gold. (%s)", amount, LocalDateTime.now().format(dtf));
                break;
            case "cave":
                amount = random.nextInt(6) + 5;
                activity = String.format("You entered a cave and earned %d gold. (%s)", amount, LocalDateTime.now().format(dtf));
                break;
            case "house":
                amount = random.nextInt(4) + 2;
                activity = String.format("You entered a house and earned %d gold. (%s)", amount, LocalDateTime.now().format(dtf));
                break;
            case "quest":
                amount = random.nextInt(101) - 50;
                if (amount < 0) {
                    color = "red";
                    activity = String.format("You failed a quest and lost %d gold. (%s)", -amount, LocalDateTime.now().format(dtf));
                } else {
                    activity = String.format("You completed a quest and earned %d gold. (%s)", amount, LocalDateTime.now().format(dtf));
                }
                break;
            case "spa": 
                amount = -(random.nextInt(16) + 5);
                color = "red";
                activity = String.format("You entered a spa and lost %d gold. (%s)", -amount, LocalDateTime.now().format(dtf));
                break;
            default:
                break;
        }

        gold += amount;
        session.setAttribute("gold", gold);

        activities.add(String.format("<span style='color:%s;'>%s</span>", color, activity));
        session.setAttribute("activities", activities);

        if (gold < -80) {
            return "redirect:/prison";
        }

        return "redirect:/";
    }

    @GetMapping("/prison")
    public String prison(HttpSession session) {
        return "prison.jsp";
    }

    @PostMapping("/reset") 
    public String resetGame(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}
