package com.lit.hw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lit.hw.entities.User;
import com.lit.hw.services.UserService;

@Controller
public class MainController {

	@Autowired
	UserService userService;
	
	/////////////////////////////////////////////////////////////page
	@RequestMapping(value = "/" ,  method = RequestMethod.GET)
	public String homePage(ModelMap model){
		model.addAttribute("listUser", userService.list());
		System.out.println("home page");
		return "home";
	}	
	@RequestMapping(value = "/add" ,  method = RequestMethod.GET)
	public String addPage(ModelMap model){
		model.addAttribute("page", "Add");
		System.out.println("add page");
		return "add";
	}
	@RequestMapping(value = "/update/{id}" ,  method = RequestMethod.GET)
	public String updatePage(ModelMap model, @PathVariable int id){
		model.addAttribute("page", "Update");
		model.addAttribute("usrObj", userService.show(id));
		System.out.println("update page");
		return "add";
	}
	@RequestMapping(value = "/show/{id}" ,  method = RequestMethod.GET)
	public String showPage(ModelMap model, @PathVariable int id){
		model.addAttribute("page", "Show");
		model.addAttribute("readonly", "readonly");
		model.addAttribute("usrObj", userService.show(id));
		System.out.println("show page");
		return "add";
	}
	
	/////////////////////////////////////////////////////////////action	
	@RequestMapping(value = "/add" ,  method = RequestMethod.POST)
	public String add(@ModelAttribute(value="usr")User usrObj){
		System.out.println("add action " + usrObj.getUsername());
		userService.add(usrObj);
		return "redirect:/";
	}
	@RequestMapping(value = "/update" ,  method = RequestMethod.POST)
	public String update(@ModelAttribute(value="stu1")User usrObj){
		System.out.println("update action " + usrObj.getId());
		userService.update(usrObj);
		return "redirect:/";
	}
	@RequestMapping(value = "/delete/{id}" ,  method = RequestMethod.GET)
	public String delete(@PathVariable int id){
		System.out.println("delete action" + id);
		userService.delete(id);		
		return "redirect:/";
	}
}
