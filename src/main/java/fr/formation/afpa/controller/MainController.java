package fr.formation.afpa.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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

	EmployeeService service;
	@InitBinder
    public final void initBinder(final WebDataBinder binder, final Locale locale) {
        final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", locale);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));   
    }
  
	@Autowired
	public MainController(EmployeeService service) {
		this.service = service;
	}

	public MainController() {
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {

	}

	@GetMapping(path = "/")
	public String getHome() {
		return "login";
	}

	@PostMapping(path = "/manager")
	public String login(@ModelAttribute("employee") Employee employee) {
		return "listmanager";
	}

	@GetMapping(path = "/listmanager")
	public String gotolistmanager(@ModelAttribute("employee") Employee employee, Model model) {
		List<Employee> list = service.findManager();
		System.out.println(list);
		model.addAttribute("list", list);
		System.out.println(list);
		return "listmanager";
	}

	@GetMapping(path = "/listemployee")
	public String getListEmployee(@ModelAttribute("employee") Employee employee, Model model) {
		List<Employee> list = service.findAll();
		model.addAttribute("list", list);
		System.out.println(list);
		return "listemployee";
	}

	@GetMapping(path = "/param")
	public String gotoparam(@ModelAttribute("employee") Employee employee) {
		return "param";
	}

	@GetMapping(path = "/ajout")
	public String ajout(@ModelAttribute("employee") Employee employee) {
		return "ajout";
	}

	 @PostMapping(path = "/ajout")
	    public String ajout( @ModelAttribute("employee") Employee employee, BindingResult result,
	            ModelMap model) {
	    System.out.println("in the save method");

	 

	Employee newEmp = new Employee();
	        model.addAttribute("firstName", employee.getFirstName());
	        model.addAttribute("lastName", employee.getLastName());
	        model.addAttribute("startdate", employee.getStartDate());
	        model.addAttribute("title", employee.getTitle());
	        model.addAttribute("manager", employee.getManager());

	
	        newEmp.setFirstName(employee.getFirstName());
	        newEmp.setLastName(employee.getLastName());
	        newEmp.setStartDate(employee.getStartDate());
	        newEmp.setTitle(employee.getTitle());
	        newEmp.setManager(employee.getManager());
	        
	        service.save(newEmp);
	        
	        model.put("employee", service.findAll());
	        return "redirect:/listemployee";
	    }

	@GetMapping(path = "/delete")
	public String delete(@ModelAttribute("employee") Employee employee, Model model, @RequestParam(name="empId") Integer empId) {
		EmployeeDaoJpa dao = new EmployeeDaoJpa();
		dao.beginTransaction();
		dao.deleteById(empId);
		dao.commit();
		//service.deleteById(empId);
		return "redirect:/listemployee";
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
