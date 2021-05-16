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

////////////////////////////////liste manager////////////////////////////////////////////////////////////////
	@GetMapping(path = "/")
	public String getHome() {
		return "login";
	}

	@PostMapping(path = "/manager")
	public String login(@ModelAttribute("employee") Employee employee, Model model) {
		List<Employee> list = service.findManager();
		System.out.println(list);
		model.addAttribute("list", list);
		System.out.println(list);
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
////////////////////////////////liste employee////////////////////////////////////////////////////////////////

	@GetMapping(path = "/listemployee")
	public String getListEmployee(@ModelAttribute("employee") Employee employee, Model model) {
		List<Employee> list = service.findAll();
		model.addAttribute("list", list);
		int countPagination = list.size()/10;
		model.addAttribute("countPagination", countPagination);
		System.out.println(list);
		return "listemployee";
	}

////////////////////////////////liste param////////////////////////////////////////////////////////////////
	@GetMapping(path = "/param")
	public String gotoparam(@ModelAttribute("employee") Employee employee, Model model) {
		List<Employee> list = service.findParam();
		model.addAttribute("list", list);
		List<Employee> manager = service.findManager();
		model.addAttribute("manager", manager);

		return "param";
	}

//	@PostMapping(path = "/ajout")
//	public String paramUpdate(@ModelAttribute("employee") Employee employee, BindingResult result, ModelMap model,
//			@RequestParam(value = "manager", required = false) Integer manager) {
//
//		Employee managerchef = service.findById(manager);
//		employee.setManager(managerchef);
//		service.update(employee);
//		return "redirect:/listemployee";
//	}

//////////////////////////////// la fonction ajout ////////////////////////////////////////////////////////////////

	@GetMapping(path = "/ajout")
	public String ajout(@ModelAttribute("employee") Employee employee, Model model,
			@RequestParam(value = "manager", required = false) Integer manager) {
		List<Employee> listmanager = service.findManager();
		model.addAttribute("manager", listmanager);

		return "ajout";
	}

	@PostMapping(path = "/ajout")
	public String ajout(@ModelAttribute("employee") Employee employee, BindingResult result, ModelMap model,
			@RequestParam(value = "manager", required = false) Integer manager) {

		Employee newEmp = new Employee();
		Employee managerchef = service.findById(manager);

		newEmp.setFirstName(employee.getFirstName());
		newEmp.setLastName(employee.getLastName());
		newEmp.setStartDate(employee.getStartDate());
		newEmp.setTitle(employee.getTitle());
		newEmp.setManager(managerchef);

		service.save(newEmp);

		model.put("employee", service.findAll());
		return "redirect:/listemployee";
	}

////////////////////////////////////////// fonction delete////////////////////////////////////////////////////////
	@GetMapping(path = "/delete")
	public String delete(@ModelAttribute("employee") Employee employee, Model model,
			@RequestParam(name = "empId") Integer empId) {
		service.deleteById(empId);
		return "redirect:/listemployee";
	}
////////////////////////////////fonction update////////////////////////////////////////////////////////////////

	@GetMapping(path = "/update")
	public String gotoupdate(Model model, @RequestParam(name = "empId") int empId) {

		Employee employee = service.findByIdforupdate(empId);
		model.addAttribute("employee", employee);
		
		List<Employee> listmanager = service.findManager();
		model.addAttribute("listmanager", listmanager);

		return "update";
	}
	
	@PostMapping(path = "/update")
	public String update(@ModelAttribute("employee") Employee employee, BindingResult result, ModelMap model,
			@RequestParam(value = "manager", required = false) Integer manager) {
		Employee managerchef = service.findById(manager);
		employee.setFirstName(employee.getFirstName());
		employee.setLastName(employee.getLastName());
		employee.setStartDate(employee.getStartDate());
		employee.setTitle(employee.getTitle());
		employee.setManager(managerchef);

		service.update(employee);

		model.put("employee", service.findAll());
		return "redirect:/listemployee";
	}
////////////////////////////////se rendre sur sub////////////////////////////////////////////////////////////////

	@GetMapping(path = "/sub")
	public String sub(@ModelAttribute("employee") Employee employee, Model model, @RequestParam(name = "empId") int empId) {
		System.out.println(empId);
		List<Employee> list = service.findsub(empId);
		System.out.println(list);
		model.addAttribute("list", list);
		Employee managerchef = service.findById(empId);
		System.out.println(managerchef);
		model.addAttribute("nommanager", managerchef);
		return "sub";
	}
	
////////////////////////////////se rendre sur différentes pages////////////////////////////////////////////////////////////////

	@GetMapping(path = "/contact")
	public String contact() {
		return "contact";
	}

	@GetMapping(path = "/aboutus")
	public String aboutus() {
		return "aboutus";
	}
}