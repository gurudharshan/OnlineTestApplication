package com.team.examproject.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="accounts")
public class Accounts {

	@Id
	private int id;
	
	private String accname,accpass;
	private int marks;
	
	public Accounts() {
		
	}
	
	public Accounts(int id, String accname, String accpass, int marks) {
		super();
		this.id = id;
		this.accname = accname;
		this.accpass = accpass;
		this.marks = marks;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccname() {
		return accname;
	}
	public void setAccname(String accname) {
		this.accname = accname;
	}
	public String getAccpass() {
		return accpass;
	}
	public void setAccpass(String accpass) {
		this.accpass = accpass;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	@Override
	public String toString() {
		return "Accounts [id=" + id + ", accname=" + accname + ", accpass=" + accpass + ", marks=" + marks + "]";
	}
	
	
}
