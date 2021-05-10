package fr.formation.afpa.service;

import java.util.List;

import org.hibernate.Session;

import fr.formation.afpa.domain.Employee;


public interface IEmployeeService {

	Employee findById(Integer id);
	List<Employee> findAll();
	
	
	Employee save(Employee t);

	
	Employee update(Employee t);
	
	void delete(Employee t);
	void deleteById(Integer id);

}
