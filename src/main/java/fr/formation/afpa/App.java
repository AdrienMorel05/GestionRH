package fr.formation.afpa;

import java.util.List;

import fr.formation.afpa.dao.EmployeeDaoJpa;
import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.service.EmployeeService;

/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {

		EmployeeDaoJpa dao = new EmployeeDaoJpa();
		dao.beginTransaction();
		List<Employee> list = dao.findManager();
		dao.closeTransaction();
		System.out.println(list);
	}
}
