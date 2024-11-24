package com.loginmodule.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.loginmodule.entities.User;
import com.loginmodule.services.UserService;

@Controller
public class LoginController {
    
	@Autowired
	private UserService userService;
	
	@GetMapping("/regPage")
	public  String openRegPage(Model model) {
		
		System.out.println("helllo");
		
		model.addAttribute("user", new User());
		return "register";
		
		
	}
	@PostMapping("/register")
	public String submitRegForm(@ModelAttribute("user") User user,Model model){
		
		boolean status= userService.registerUser(user);
		
		if(status) {
			model.addAttribute("Successmsg", "User Register Successfully");
		}else {
			model.addAttribute("Errormsg", "User Not Register");

		}
		
		return "welcome";
		
	}
}
