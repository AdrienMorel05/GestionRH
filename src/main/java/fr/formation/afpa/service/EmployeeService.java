package fr.formation.afpa.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import fr.formation.afpa.dao.IEmployeeDaoJpa;
import fr.formation.afpa.domain.Employee;

@Service
@Transactional
public class EmployeeService implements IEmployeeService {

	@Autowired
//	@Qualifier("employeeDaoJpa")
	private IEmployeeDaoJpa dao;

	public IEmployeeDaoJpa getDao() {
		return dao;
	}

	public EmployeeService() {
	}

	@Override
	public Employee findById(Integer id) {
		dao.beginTransaction();
		Employee emp = dao.findById(id);
		return emp;
	}

	@Override
	public List<Employee> findAll() {
		dao.beginTransaction();
		List<Employee> list = dao.findAll();
		dao.commitAndCloseTransaction();
		return list;
	}

	@Override
	public List<Employee> findManager() {
		dao.beginTransaction();
		List<Employee> list = dao.findManager();
		dao.commitAndCloseTransaction();
		return list;
	}

	@Override
	public Employee save(Employee t) {
		dao.beginTransaction();
		dao.save(t);
		dao.commitAndCloseTransaction();
		return t;
	}

	@Override
	public Employee update(Employee t) {
		dao.beginTransaction();
		dao.update(t);
		dao.commitAndCloseTransaction();
		return t;
	}

	@Override
	public void delete(Employee t) {
		dao.beginTransaction();
		dao.delete(t);

	}

	@Override
	public void deleteById(Integer id) {
		dao.beginTransaction();
		delete(findById(id));
		dao.commit();
	}

}
