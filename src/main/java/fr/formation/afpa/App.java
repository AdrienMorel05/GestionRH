package fr.formation.afpa;

import java.util.List;

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

    	EmployeeDaoJpa dao = new EmployeeDaoJpa();
    	dao.beginTransaction();
    	List<Employee> list = dao.findAll();
    	dao.commitAndCloseTransaction();
    	System.out.println(list);
        
//    	EmployeeService service = new EmployeeService();
//    	List<Employee> listemp= service.findAll();
//    	System.out.println(listemp);
//    	

    }
}
