package fr.formation.afpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import fr.formation.afpa.domain.Employee;

@Repository
public class EmployeeDaoJpa implements IEmployeeDaoJpa {

	@PersistenceContext
	private EntityManager em;

	public EmployeeDaoJpa() {
	}

	
	public Employee findById(Integer id) {

		return em.find(Employee.class, id);
	}

	public List<Employee> findAll() {

		return em.createQuery("select emp from Employee emp").getResultList();
	}

	public List<Employee> findManager() {

		return em.createQuery("select distinct manager from Employee superior_emp").getResultList();
	}
	
	public List<Employee> findParam() {

		return em.createQuery("select emp from Employee emp where manager is null").getResultList();
	}

	
	public Integer save(Employee e) {
		em.persist(e);
		return e.getEmpId();
	}

	public Employee update(Employee e) {
		return em.merge(e);
	}

	public void delete(Employee e) {
		em.remove(e);
	}

	public void deleteById(Integer id) {
		Employee emp = findById(id);
		delete(emp);

	}

}
