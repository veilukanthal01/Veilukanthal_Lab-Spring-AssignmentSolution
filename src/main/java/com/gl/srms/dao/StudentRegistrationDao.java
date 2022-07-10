package com.gl.srms.dao;

import java.util.List;

import com.gl.srms.entity.Student;

public interface StudentRegistrationDao{
	public void save(Student theStudent);
	public List<Student> finAll();
	public List<Student> searchBy(String name, String department);
	public Student findById(int id);
	public void deleteById(int studentId);

}
