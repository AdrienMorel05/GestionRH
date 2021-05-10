package fr.formation.afpa;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import fr.formation.afpa.dao.EmployeeDaoJpa;
import fr.formation.afpa.domain.Employee;


/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {

//    	EmployeeDaoJpa dao = new EmployeeDaoJpa();
//    	dao.beginTransaction();
//    	List<Employee> list = dao.findManager();
//    	dao.commitAndCloseTransaction();
//    	System.out.println(list);
//    	Date date = new Date();
    	
//    	EmployeeDaoJpa dao= new EmployeeDaoJpa();
//		dao.beginTransaction();
//		Employee emp = new Employee(83, "o", "secours", "app", date);
////		model.addAttribute("list",list);
//		System.out.println(emp);
//		dao.save(emp);
//		dao.commitAndCloseTransaction();
	
    
    	Employee e = new Employee();
    	e.setFirstName("test");
    	e.setLastName("25");
    	e.setStartDate(new Date());
//    	em.getTransaction().begin();
//    	em.persist(e);
//    	em.getTransaction().commit();
    	
    	EmployeeDaoJpa dao = new EmployeeDaoJpa();
    	dao.beginTransaction();
    	dao.save(e);
    	dao.commitAndCloseTransaction();
		
//    	EmployeeService service = new EmployeeService();
//    	List<Employee> listemp= service.findAll();
//    	System.out.println(listemp);
//    	

    }
}
