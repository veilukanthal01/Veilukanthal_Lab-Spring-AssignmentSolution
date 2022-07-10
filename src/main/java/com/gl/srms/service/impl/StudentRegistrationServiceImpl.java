package com.gl.srms.service.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gl.srms.dao.StudentRegistrationDao;
import com.gl.srms.entity.Student;
import com.gl.srms.service.StudentRegistrationService;

@Service
public class StudentRegistrationServiceImpl implements StudentRegistrationService{
	
	@Autowired
	StudentRegistrationDao studentRegistrationDao;

	@Override
	public void save(Student theStudent) {
		// TODO Auto-generated method stub
		studentRegistrationDao.save(theStudent);
	}

	@Override
	public List<Student> finAll() {
		// TODO Auto-generated method stub
		return studentRegistrationDao.finAll();
	}

	@Override
	public List<Student> searchBy(String name, String department) {
		// TODO Auto-generated method stub
		return studentRegistrationDao.searchBy(name, department);
	}

	@Override
	public Student findById(int id) {
		// TODO Auto-generated method stub
		return studentRegistrationDao.findById(id);
	}

	@Override
	public void deleteById(int studentId) {
		// TODO Auto-generated method stub
		studentRegistrationDao.deleteById(studentId);
		
	}
	

}
