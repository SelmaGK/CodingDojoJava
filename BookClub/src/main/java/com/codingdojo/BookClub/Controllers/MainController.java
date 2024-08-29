package com.codingdojo.BookClub.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.BookClub.Models.Book;
import com.codingdojo.BookClub.Models.LoginUser;
import com.codingdojo.BookClub.Models.User;
import com.codingdojo.BookClub.Services.BookService;
import com.codingdojo.BookClub.Services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController {


	@Autowired
	private UserService userService;
	@Autowired
	private BookService bookService;
    
    @GetMapping("/")
    public String index(Model model) {
    
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "index.jsp";
    }
    
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        
    	User user = userService.register(newUser, result);
    	        
        if(result.hasErrors()) {

            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }
        
        session.setAttribute("userId", user.getId());
    
        return "redirect:/books";
    }
    
    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, Model model, HttpSession session) {
        
        User user = userService.login(newLogin, result);
    
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "index.jsp";
        }
    
        session.setAttribute("userId", user.getId());
    
        return "redirect:/books";
    }
    
    @GetMapping("/books")
    public String books(Model model, HttpSession session) {
    	
    	if(session.getAttribute("userId") == null) {
    		return "redirect:/";
    	}
    	
    	model.addAttribute("books", bookService.all());
    	model.addAttribute("user", userService.findById((Long)session.getAttribute("userId")));
    	return "books.jsp";
    }
    
    @GetMapping("/newBook")
    public String newBook(@ModelAttribute("book") Book book, Model model, HttpSession session) {
    	
    	User user = userService.findById((Long)session.getAttribute("userId"));
    	model.addAttribute("user", user);
    	
    	return "newBook.jsp";
    }
    
    @PostMapping("/books")
    public String createBook(@Valid @ModelAttribute("book") Book book, BindingResult result, HttpSession session) {

        if (result.hasErrors()) {
            return "newBook.jsp";
        }

        Long userId = (Long) session.getAttribute("userId");
        User user = userService.findById(userId);
        
        book.setUser(user);
        
        bookService.create(book);
        
        return "redirect:/books";
    }
    
    @GetMapping("/books/{id}")
    public String showBook(Model model, @PathVariable("id") Long id, HttpSession session) {
    	if(session.getAttribute("userId") == null) {
    		return "redirect:/";
    	}
    	Book book = bookService.findById(id);
    	model.addAttribute("book", book);
    	model.addAttribute("user", userService.findById((Long)session.getAttribute("userId")));
    	
    	return "showBook.jsp";
    }
    
    @GetMapping("/edit/{id}")
    public String editBook(@PathVariable("id") Long id, Model model) {
        model.addAttribute("book", bookService.findById(id));
        return "editBook.jsp";
    }

    @PostMapping("/edit/{id}")
    public String updateBook(@Valid @ModelAttribute("book") Book book, BindingResult result, HttpSession session, Model model) {
        if (result.hasErrors()) {
            return "editBook.jsp";
        }
        Long userId = (Long) session.getAttribute("userId");
        User user = userService.findById(userId);
        
        book.setUser(user);
        bookService.update(book);
        return "redirect:/books/{id}";
    }
    
    @RequestMapping("/books/delete/{id}")
	public String deleteTravel(@PathVariable("id") Long id) {
		Book book = bookService.findById(id);
		bookService.delete(book);
		return "redirect:/books";
	}
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
    
}