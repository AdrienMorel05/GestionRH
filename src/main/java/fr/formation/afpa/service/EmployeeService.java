package fr.formation.afpa.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
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
	public List<Employee> findAll() {
		List<Employee> list = dao.findAll();
		return list;
	}

	@Override
	public List<Employee> findManager() {
		List<Employee> list = dao.findManager();
		return list;
	}

	@Override
	public List<Employee> findParam() {
		List<Employee> list = dao.findParam();
		return list;
	}
	@Override
	public List<Employee> findsub(Integer id) {
		List<Employee> list = dao.findsub(id);
		return list;
	}
	@Override
	public Employee save(Employee t) {
		dao.save(t);
		return t;
	}

	@Override
	public Employee update(Employee t) {
		dao.update(t);
		return t;
	}

	@Override
	public void delete(Employee t) {
		dao.delete(t);
	}

	@Override
	public void deleteById(Integer id) {
		Employee emp = findById(id);
		delete(emp);
	}
	@Override
	public Employee findById(Integer id) {
		Employee emp = dao.findById(id);
		return emp;
	}
	public Employee findByIdforupdate(Integer id) {
		Employee emp = dao.findById(id);
		return emp;
	}


}
