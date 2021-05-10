package fr.formation.afpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import fr.formation.afpa.domain.Employee;

@Repository
public class EmployeeDaoJpa implements IEmployeeDaoJpa {

	private EntityManagerFactory emf;
	private EntityManager em;

	public EmployeeDaoJpa() {
		emf = Persistence.createEntityManagerFactory("BD");
	}

	public void beginTransaction() {
		em = emf.createEntityManager();
		em.getTransaction().begin();
	}

	public void commitAndCloseTransaction() {
		em.getTransaction().commit();
		em.close();
	}

	public void closeTransaction() {
		em.close();
	}

	public void rollBack() {
		em.getTransaction().rollback();
	}

	public Employee findById(Integer id) {

		return em.find(Employee.class, id);
	}

	public List<Employee> findAll() {

		return em.createQuery("select emp from Employee emp").getResultList();
	}

	public List<Employee> findManager() {

		return em.createQuery("select emp from Employee emp WHERE EMP_ID in (select distinct 'SUPERIOR_EMP_ID' from Employee)").getResultList();
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
