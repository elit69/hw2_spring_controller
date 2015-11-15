package com.lit.hw.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecurityController {

	//////////////////////////////////////////////////page
	@RequestMapping(value = "/403")
	public String accessDenied(ModelMap m) {
		System.out.println("access denied 403");
		return "403";
	}

	@RequestMapping(value = "/login")
	public String loginPage(Model model) {
		if(isAuthenticated()) return "redirect:/";
		System.out.println("login page");
		return "login";
	}

	@RequestMapping(value = "/logout")
	public String logoutAction(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){
			new SecurityContextLogoutHandler().logout(request, response, auth);
			System.out.println("success logout");
		}
		return "redirect:/";
	}
	
	//////////////////////////////////////////////////other function
	public boolean isAuthenticated() {
		return SecurityContextHolder.getContext().getAuthentication() instanceof AnonymousAuthenticationToken ? false:true;
	}
	/*	private boolean isLogin() {
	return SecurityContextHolder.getContext().getAuthentication().getName() == "anonymousUser" ? false : true;
	}
	
	private String getRole() {
		return SecurityContextHolder.getContext().getAuthentication().getAuthorities().toString();
	}
	
	private String getUsername() {
		return SecurityContextHolder.getContext().getAuthentication().getName();
	}
	*/
}
