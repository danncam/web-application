package com.entity;


public class Employee {
	//define the fields
	
	private int id;
	private String name;
	private String dob;
	private String dept;
	
	//define setters and getters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	
	//generate toString
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", department=" + dept + "dob=" + dob + "]";
	}
}
