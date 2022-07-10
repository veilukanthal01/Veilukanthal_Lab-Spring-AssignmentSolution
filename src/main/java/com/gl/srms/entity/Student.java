package com.gl.srms.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {
	
	// define fields

		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="student_Id")
		private int studentId;


		@Column(name="name")
		private String name;


		@Column(name="department")
		private String department;


		@Column(name="country")
		private String country;
		

		public Student() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Student(String name, String department, String country) {
			super();
			this.name = name;
			this.department = department;
			this.country = country;
		}
		
		public Student(int studentId, String name, String department, String country) {
			super();
			this.studentId = studentId;
			this.name = name;
			this.department = department;
			this.country = country;
		}

		public int getStudentId() {
			return studentId;
		}

		public void setStudentId(int studentId) {
			this.studentId = studentId;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getDepartment() {
			return department;
		}

		public void setDepartment(String department) {
			this.department = department;
		}

		public String getCountry() {
			return country;
		}

		public void setCountry(String country) {
			this.country = country;
		}

		@Override
		public String toString() {
			return "Student [studentId=" + studentId + ", name=" + name + ", department=" + department + ", country="
					+ country + "]";
		}
		

}
