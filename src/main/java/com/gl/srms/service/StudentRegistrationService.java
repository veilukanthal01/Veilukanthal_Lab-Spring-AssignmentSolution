package com.gl.srms.service;

import java.util.List;

import com.gl.srms.entity.Student;

public interface StudentRegistrationService {
	public void save(Student theStudent);
	public List<Student> finAll();
	public List<Student> searchBy(String name, String department);
	public Student findById(int id);
	public void deleteById(int studentId);

}
