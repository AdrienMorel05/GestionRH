package fr.formation.afpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {

	@GetMapping(path = "/")
	public String getHome() {
		return "login";
	}
	@PostMapping(path="/manager")
	public String login() {
		return "listmanager";
	}
	@GetMapping(path="/allemployee")
	public String allemployeelist() {
		return "listallemployee";
	}
	@GetMapping(path="/employee")
	public String employeelist() {
		return "listemployee";
	}
	@GetMapping(path = "/listmanager")
	public String gotolistmanager() {
		return "listmanager";
	}
	@GetMapping(path = "/listemployee")
	public String gotolistemployee() {
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
	@GetMapping(path="/aboutus")
	public String aboutus() {
		return "aboutus";
	}
}

