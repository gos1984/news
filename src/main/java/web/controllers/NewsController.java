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
import web.beans.News;
import web.models.NewsModel;

@Controller
public class NewsController {

	@Autowired
	NewsModel model;

	@RequestMapping("/category_add")
	public String categoryForm(Model m) {
		m.addAttribute("command", new Category());
		return "category_add";
	}

	@RequestMapping(value = "/category_save", method = RequestMethod.POST)
	public String saveCategory(@ModelAttribute("category") Category category) {
		model.saveCategory(category);
		return "redirect:/category";
	}

	@RequestMapping("/category")
	public String viewCategory(Model m) {
		List<Category> list = model.getCategoryes();
		m.addAttribute("list", list);
		return "category";
	}

	@RequestMapping("/category/edit/{id}")
	public String editCategory(@PathVariable int id, Model m) {
		Category category = model.getCategoryId(id);
		m.addAttribute("command", category);
		return "category_edit";
	}

	@RequestMapping(value = "/category/editsave", method = RequestMethod.POST)
	public String editSaveCategory(@ModelAttribute("category") Category category) {
		model.updateCategory(category);
		return "redirect:/category";
	}

	@RequestMapping(value = "/category/delete/{id}", method = RequestMethod.GET)
	public String deleteCategory(@PathVariable int id) {
		model.deleteCategory(id);
		return "redirect:/category";
	}

	@RequestMapping("/news_add")
	public String newsForm(Model m) {
		m.addAttribute("command", new News());
		return "news_add";
	}

	@RequestMapping(value = "/news_save", method = RequestMethod.POST)
	public String saveNews(@ModelAttribute("news") News news) {
		model.saveNews(news);
		return "redirect:/news";
	}

	@RequestMapping("/news")
	public String viewNews(Model m) {
		List<News> list = model.getNews();
		m.addAttribute("list", list);
		return "news";
	}

	@RequestMapping("/news/edit/{id}")
	public String editNews(@PathVariable int id, Model m) {
		News news = model.getNewId(id);
		m.addAttribute("command", news);
		return "news_edit";
	}

	@RequestMapping(value = "/news/editsave", method = RequestMethod.POST)
	public String editSaveNews(@ModelAttribute("news") News news) {
		model.updateNews(news);
		return "redirect:/news";
	}

	@RequestMapping(value = "/news/delete/{id}", method = RequestMethod.GET)
	public String deleteNews(@PathVariable int id) {
		model.deleteNews(id);
		return "redirect:/news";
	}

}
