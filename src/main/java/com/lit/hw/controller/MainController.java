package com.lit.hw.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lit.hw.entities.User;
import com.lit.hw.services.UserService;

@Controller
public class MainController {

	@Autowired
	UserService userService;
	static String message;

	// /////////////////////////////////////////////////////////// page
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		model.addAttribute("message", message);
		message = "";
		model.addAttribute("currentUser", userService.show(getCurrentUsername()));
		model.addAttribute("listUser", userService.list());
		System.out.println("home page");
		return "home";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPage(ModelMap model) {
		model.addAttribute("currentUser", userService.show(getCurrentUsername()));
		model.addAttribute("page", "Add");
		System.out.println("add page");
		return "_form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String updatePage(ModelMap model, @PathVariable int id) {
		model.addAttribute("currentUser", userService.show(getCurrentUsername()));
		model.addAttribute("page", "Update");
		model.addAttribute("usrObj", userService.show(id));
		System.out.println("update page");
		return "_form";
	}

	@RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
	public String showPage(ModelMap model, @PathVariable int id) {
		model.addAttribute("currentUser", userService.show(getCurrentUsername()));
		model.addAttribute("page", "Show");
		model.addAttribute("readonly", "readonly");
		model.addAttribute("disabled", "disabled");
		model.addAttribute("usrObj", userService.show(id));
		System.out.println("show page");
		return "_form";
	}

	// /////////////////////////////////////////////////////////// action
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@ModelAttribute(value = "usr") User usrObj) {
		System.out.println("add action " + usrObj.getUsername());
		userService.add(usrObj);
		return "redirect:/";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute(value = "stu1") User usrObj) {
		System.out.println("update action " + usrObj.getId());
		userService.update(usrObj);
		return "redirect:/";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable int id) {
		if (userService.show(getCurrentUsername()).getId() == id) {
			message = "You cannot delete yourself.";
		} else {
			System.out.println("delete action" + id);
			userService.delete(id);
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(ModelMap model, @RequestParam(value = "keyword", required = true) String keyword,
			@RequestParam(value = "type", required = true) String type) {
		System.out.println("search action " + keyword + " " + type);
		if (!keyword.equals("")) {
			model.addAttribute("listUser", userService.search(keyword, type));
			return "home";
		} else
			return "redirect:/";
	}

	// ////////////////////////////////////////////////security page
	@RequestMapping(value = "/403")
	public String accessDenied(ModelMap m) {
		System.out.println("access denied 403");
		return "403";
	}

	@RequestMapping(value = "/login")
	public String loginPage(Model model) {
		if (isAuthenticated())
			return "redirect:/";
		System.out.println("login page");
		return "login";
	}

	@RequestMapping(value = "/logout")
	public String logoutAction(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			System.out.println("success logout");
		}
		return "redirect:/";
	}

	// ////////////////////////////////////////////////other function
	public boolean isAuthenticated() {
		return !(SecurityContextHolder.getContext().getAuthentication() instanceof AnonymousAuthenticationToken);
	}

	private String getCurrentUsername() {
		return SecurityContextHolder.getContext().getAuthentication().getName();
	}
	/*
	 * private boolean isLogin() { return
	 * SecurityContextHolder.getContext().getAuthentication().getName() ==
	 * "anonymousUser" ? false : true; }
	 * 
	 * private String getRole() { return
	 * SecurityContextHolder.getContext().getAuthentication
	 * ().getAuthorities().toString(); }
	 */
}
