package com.example.SaveTravels.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.SaveTravels.Models.Travel;
import com.example.SaveTravels.Services.TravelService;

import jakarta.validation.Valid;

@Controller
public class MainController {
	@Autowired
	TravelService travelService;
    
    @GetMapping("/")
    public String index(Model model, @ModelAttribute("travel") Travel travel) {
        List<Travel> travels = travelService.allTravels();
    	model.addAttribute("travels", travels);
        return "index.jsp";
    }

    @PostMapping("/travels")
    public String createTravel(@Valid @ModelAttribute("travel") Travel travel, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("travels", travelService.allTravels());
            return "index.jsp";
        }
        travelService.createTravel(travel);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public String editTravel(@PathVariable("id") Long id, Model model) {
        model.addAttribute("travel", travelService.findTravel(id));
        return "edit.jsp";
    }

    @PostMapping("/edit/{id}")
    public String updateTravel(@Valid @ModelAttribute("travel") Travel travel, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "edit.jsp";
        }
        travelService.updateTravel(travel);
        return "redirect:/";
    }
	
    @GetMapping("/travels/{id}")
    public String showTravel(@PathVariable("id") Long id, Model model) {
        model.addAttribute("travel", travelService.findTravel(id));
        return "show.jsp";
    }
	
    @RequestMapping("/travels/delete/{id}")
	public String deleteTravel(@PathVariable("id") Long id) {
		Travel travel = travelService.findTravel(id);
		travelService.deleteTravel(travel);
		return "redirect:/";
	}
}

