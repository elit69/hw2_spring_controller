package com.lit.hw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lit.hw.entities.User;
import com.lit.hw.services.UserService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

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
		return "/admin/home";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPage(ModelMap model) {
		model.addAttribute("currentUser", userService.show(getCurrentUsername()));
		model.addAttribute("page", "Add");
		System.out.println("add page");
		return "/admin/_form";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String updatePage(ModelMap model, @PathVariable int id) {
		model.addAttribute("currentUser", userService.show(getCurrentUsername()));
		model.addAttribute("page", "Update");
		model.addAttribute("usrObj", userService.show(id));
		System.out.println("update page");
		return "/admin/_form";
	}

	@RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
	public String showPage(ModelMap model, @PathVariable int id) {
		model.addAttribute("currentUser", userService.show(getCurrentUsername()));
		model.addAttribute("page", "Show");
		model.addAttribute("readonly", "readonly");
		model.addAttribute("disabled", "disabled");
		model.addAttribute("usrObj", userService.show(id));
		System.out.println("show page");
		return "/admin/_form";
	}

	// /////////////////////////////////////////////////////////// action
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@ModelAttribute(value = "usr") User usrObj) {
		System.out.println("add action " + usrObj.getUsername());
		userService.add(usrObj);
		return "redirect:/admin/";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute(value = "stu1") User usrObj) {
		System.out.println("update action " + usrObj.getId());
		userService.update(usrObj);
		return "redirect:/admin/";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable int id) {
		if (userService.show(getCurrentUsername()).getId() == id) {
			message = "You cannot delete yourself.";
		} else {
			System.out.println("delete action" + id);
			userService.delete(id);
		}
		return "redirect:/admin/";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(ModelMap model, @RequestParam(value = "keyword", required = true) String keyword,
			@RequestParam(value = "type", required = true) String type) {
		System.out.println("search action " + keyword + " " + type);
		if (!keyword.equals("")) {
			model.addAttribute("listUser", userService.search(keyword, type));
			return "/admin/home";
		} else
			return "redirect:/admin/";
	}

	// ////////////////////////////////////////////////other function
	private String getCurrentUsername() {
		return SecurityContextHolder.getContext().getAuthentication().getName();
	}
}
