package web.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.beans.Category;
import web.models.CategoryModel;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryModel model;
	
	@RequestMapping("/category_add")
	public String categoryform(Model m) {
		m.addAttribute("command", new Category());
		return "category_add";
	}
	
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("category") Category category) {
		model.save(category);
		return "redirect:/category";
	}
	
	@RequestMapping("/category")
	public String viewcategory(Model m) {
		List<Category> list = model.getCategoryes();
		m.addAttribute("list", list);
		return "category";
	}
	
	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable int id, Model m) {
		Category category = model.getCategoryId(id);
		m.addAttribute("command", category);
		return "category_edit";
	}
	
	@RequestMapping(value="/editsave", method=RequestMethod.POST)
	public String editsave(@ModelAttribute("category") Category category) {
		model.update(category);
		return "redirect:/category";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable int id) {
		model.delete(id);
		return "redirect:/category";
	}

}
