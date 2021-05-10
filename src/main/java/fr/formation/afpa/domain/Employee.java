package fr.formation.afpa.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Employee {

@Id
@GeneratedValue (strategy= GenerationType.IDENTITY)
@Column(name = "emp_Id", unique = true, nullable=false)
private int empId;

@ManyToOne
@JoinColumn(name ="SUPERIOR_EMP_ID ")
private Employee manager;

@OneToMany(fetch = FetchType.LAZY, mappedBy = "manager")
private Set<Employee> employees =  new HashSet<Employee>();

@Column(name ="first_Name",  nullable=false, length = 30)
private String firstName;

@Column(name ="last_Name", nullable=false, length = 30)
private String lastName;

@Temporal(TemporalType.DATE)
@Column(name ="start_Date", nullable=false)
private Date startDate;

@Temporal(TemporalType.DATE)
@Column(name ="end_Date")
private Date endDate;

@Column
private String title;

@ManyToOne
@JoinColumn(name="DEPT_ID")
private  Department department;


public Employee() {
}

public int getEmpId() {
	return empId;
}

public void setEmpId(int empId) {
	this.empId = empId;
}

public String getFirstName() {
	return firstName;
}

public void setFirstName(String firstName) {
	this.firstName = firstName;
}

public String getLastName() {
	return lastName;
}

public void setLastName(String lastName) {
	this.lastName = lastName;
}

public Date getStartDate() {
	return startDate;
}

public void setStartDate(Date startDate) {
	this.startDate = startDate;
}

public Date getEndDate() {
	return endDate;
}

public void setEndDate(Date endDate) {
	this.endDate = endDate;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}



public Department getDepartment() {
	return department;
}

public void setDepartment(Department department) {
	this.department = department;
}


public Employee getManager() {
	return manager;
}

public void setManager(Employee manager) {
	this.manager = manager;
}

public Set<Employee> getEmployees() {
	return employees;
}

public void setEmployees(Set<Employee> employees) {
	this.employees = employees;
}


public Employee(int empId, String firstName, String lastName, String title, Date startDate,Employee manager) {
	this.empId = empId;
	this.firstName = firstName;
	this.lastName = lastName;
	this.title = title;
	this.startDate = startDate;
	this.manager = manager;
}

@Override
public String toString() {
	return "Employee [empId=" + empId + ", firstName=" + firstName + ", lastName=" + lastName + ", startDate="
			+ startDate + ", endDate=" + endDate + ", title=" + title + "]";
}



}
