package fr.formation.afpa.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.formation.afpa.dao.EmployeeDaoJpa;
import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.service.EmployeeService;

@Controller
public class MainController {

	@Autowired
	EmployeeService service;

	@InitBinder
	public void initBinder(WebDataBinder binder) {

	}

	@GetMapping(path = "/")
	public String getHome() {
		return "login";
	}

	@PostMapping(path = "/manager")
	public String login() {
		return "listmanager";
	}

	@GetMapping(path = "/employee")
	public String employeelist(@ModelAttribute Employee employee, Model model) {

		EmployeeDaoJpa dao = new EmployeeDaoJpa();
		dao.beginTransaction();
		List<Employee> list = dao.findAll();
		model.addAttribute("list", list);
		dao.commitAndCloseTransaction();
		return "listemployee";
	}

	@GetMapping(path = "/listmanager")
	public String gotolistmanager() {
		return "listmanager";
	}

	@GetMapping(path = "/listemployee")
	public String getListEmployee() {
		return "listemployee";
	}

	@GetMapping(path = "/param")
	public String gotoparam() {
		return "param";
	}

	@GetMapping(path = "/ajout")
	public String ajout() {
		return "ajout";
	}

	@PostMapping(path = "/ajout")
	public String add(@ModelAttribute("employee") Employee employee, Model model, BindingResult result,
			@RequestParam(name = "firstname") String firstname, @RequestParam(name = "name") String name,
			@RequestParam(name = "title") String title, @RequestParam(name = "date") Date date) {
		if (result.hasErrors()) {
			return "ajout";
			
		} else {
			Employee e = new Employee(firstname, name, title, date);
			EmployeeDaoJpa dao = new EmployeeDaoJpa();
			dao.beginTransaction();
			dao.save(e);
			dao.commitAndCloseTransaction();

			return "listmanager";
		}
	}

	@GetMapping(path = "/contact")
	public String contact() {
		return "contact";
	}

	@GetMapping(path = "/aboutus")
	public String aboutus() {
		return "aboutus";
	}
}
