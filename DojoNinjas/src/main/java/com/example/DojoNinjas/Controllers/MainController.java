package com.example.DojoNinjas.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.DojoNinjas.Models.Dojo;
import com.example.DojoNinjas.Models.Ninja;
import com.example.DojoNinjas.Services.DojoService;
import com.example.DojoNinjas.Services.NinjaService;

@Controller
public class MainController {
    
    @Autowired
    private DojoService dojoService;

    @Autowired
    private NinjaService ninjaService;

    @GetMapping("/dojos/new")
    public String newDojoForm() {
        return "newDojo.jsp";
    }

    @PostMapping("/dojos/new")
    public String createDojo(@RequestParam("name") String name) {
        Dojo newDojo = new Dojo();
        newDojo.setName(name);
        dojoService.createDojo(newDojo);
        return "redirect:/dojos/new";
    }

    @GetMapping("/ninjas/new")
    public String newNinjaForm(Model model) {
        List<Dojo> dojos = dojoService.findAllDojos();
        model.addAttribute("dojos", dojos);
        return "newNinja.jsp";
    }

    @PostMapping("/ninjas/new")
    public String createNinja(
        @RequestParam("dojoId") Long dojoId,
        @RequestParam("firstName") String firstName,
        @RequestParam("lastName") String lastName,
        @RequestParam("age") int age
    ) {
        Dojo dojo = dojoService.findDojoById(dojoId);
        Ninja newNinja = new Ninja();
        newNinja.setFirstName(firstName);
        newNinja.setLastName(lastName);
        newNinja.setAge(age);
        newNinja.setDojo(dojo);
        ninjaService.createNinja(newNinja);
        return "redirect:/ninjas/new";
    }

    @GetMapping("/dojos/{id}")
    public String showDojo(@PathVariable("id") Long id, Model model) {
        Dojo dojo = dojoService.findDojoById(id);
        model.addAttribute("dojo", dojo);
        return "showDojo.jsp";
    }
}
