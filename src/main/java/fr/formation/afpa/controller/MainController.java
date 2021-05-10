package fr.formation.afpa.controller;

import java.util.List;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.service.EmployeeService;

@Controller
public class MainController {

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
		ConfigurableApplicationContext context = new AnnotationConfigApplicationContext(MainController.class);
		EmployeeService service = context.getBean("employeeService", EmployeeService.class);
		List<Employee> list = service.findAll();
		model.addAttribute("list",list);
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

	@GetMapping(path = "/contact")
	public String contact() {
		return "contact";
	}

	@GetMapping(path = "/aboutus")
	public String aboutus() {
		return "aboutus";
	}
}
