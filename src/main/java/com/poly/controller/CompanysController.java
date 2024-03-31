package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.CompanysRepository;
import com.poly.entity.Companys;

import com.poly.service.ParamService;
import com.poly.service.SessionService;
import jakarta.websocket.Session;


@Controller
public class CompanysController {
	@Autowired
	CompanysRepository dao;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService session;
	
	@RequestMapping("/admin/nhatuyendung")
	public String index(Model model) {
		Companys companys = new Companys();
		model.addAttribute("companys", companys);
		List<Companys> companysList = dao.findAll();
		model.addAttribute("companysList", companysList);
		return "/admin/nhatuyendung";
	}
	@GetMapping("/admin/nhatuyendung/edit/{id}")
	public String edit(@PathVariable("id") String id, Model model) {
		Companys companys = dao.findById(id).get();
		System.out.println("----------data"+ companys);
		model.addAttribute("companys1", companys);
		return "redirect:/admin/nhatuyendung";
	}
	
	@PostMapping("/admin/nhatuyendung/create")
	public String create(Companys companys) {
		System.out.println("companys"+companys);
		dao.save(companys);
		return "redirect:/nhatuyendung";
	}
	
	@PostMapping("/admin/nhatuyendung/update")
	public String update(Companys companys) {
		dao.save(companys);
		return "redirect:/admin/nhatuyendung/edit/"+companys.getId();
	}
	
	@GetMapping("/admin/nhatuyendung/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/nhatuyendung";
	}
	
	@RequestMapping("/admin/nhatuyendung/search")
	public String search(Model model, @RequestParam("keywords") Optional<String> key) {
		String keywords = key.orElse(session.get("keywords",""));
		List<Companys> items = dao.findByIdOrName(keywords);
		model.addAttribute("companysList", items);
		return "/admin/nhatuyendung";
	}
}
