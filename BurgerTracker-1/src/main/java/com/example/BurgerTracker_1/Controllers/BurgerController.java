package com.example.BurgerTracker_1.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.BurgerTracker_1.Models.Burger;
import com.example.BurgerTracker_1.Services.BurgerService;

import jakarta.validation.Valid;

@Controller
public class BurgerController {
	@Autowired
	BurgerService burgerService;
    
    @GetMapping("/")
    public String index(Model model, @ModelAttribute("burger") Burger burger) {
        List<Burger> burgers = burgerService.allBurgers();
    	model.addAttribute("burgers", burgers);
        return "index.jsp";
    }

    @PostMapping("/burgers")
    public String home(@Valid @ModelAttribute("burger") Burger burger, BindingResult result, Model model) {
        if (result.hasErrors()) {
        	List<Burger> burgers = burgerService.allBurgers();
            model.addAttribute("burgers", burgers);
            return "index.jsp";
        }
	    burgerService.createBurger(burger);
		return "redirect:/";
}    

	@GetMapping("/edit/{id}")
	public String editBurger(@PathVariable("id") Long id, @ModelAttribute("burger") Burger burger, Model model) {
		model.addAttribute("burger", burgerService.findBurger(id));
		return "Edit.jsp";
	}

	@PostMapping("/edit/{id}")
	public String updateBurger(@Valid @ModelAttribute("burger") Burger burger, BindingResult result, @PathVariable("id") Long id, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("burger", burger);
			return "Edit.jsp";
		}
		burgerService.updateBurger(burger);
		return "redirect:/";
	}
}
