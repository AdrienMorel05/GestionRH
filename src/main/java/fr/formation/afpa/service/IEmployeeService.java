package fr.formation.afpa.service;

import java.util.List;

import fr.formation.afpa.domain.Employee;


public interface IEmployeeService {

	Employee findById(Integer id);
	List<Employee> findAll();
	List<Employee> findManager();	
	List<Employee> findParam();
	List<Employee> findsub(Integer id);

	
	Employee save(Employee t);

	
	Employee update(Employee t);
	
	void delete(Employee t);
	void deleteById(Integer id);

}
