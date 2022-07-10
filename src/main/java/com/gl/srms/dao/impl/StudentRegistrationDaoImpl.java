package com.gl.srms.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gl.srms.dao.StudentRegistrationDao;
import com.gl.srms.entity.Student;

@Repository
public class StudentRegistrationDaoImpl implements StudentRegistrationDao{


	private SessionFactory sessionFactory;

	// create session
	private Session session;

	@Autowired
	StudentRegistrationDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();
		}


	}

	@Override
	public void save(Student theStudent) {
		
		Transaction tx = session.beginTransaction();

		// save transaction
		session.saveOrUpdate(theStudent);


		tx.commit();
		
	}

	@Override
	public List<Student> finAll() {
//		}
		Transaction tx = session.beginTransaction();

		// find all the records from the database table
		List<Student> students=session.createQuery("from Student").list();

		tx.commit();


		return students;
	}

	@Override
	public List<Student> searchBy(String name, String department) {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		String query="";
		if(name.length()!=0 && department.length()!=0)
			query ="from Student where name like '%"+name+"%' or department like '%"+department+"%'";
		else if(name.length()!=0)
			query ="from Student where name like '%"+name+"%'";
		else if(department.length()!=0)
			query ="from Student where department like '%"+department+"%'";
		else
			System.out.println("Cannot search without input data");


		List<Student> students=session.createQuery(query).list();

		tx.commit();


		return students;
	}

	@Override
	public Student findById(int id) {
		// TODO Auto-generated method stub

		Student student = new Student();
		Transaction tx = session.beginTransaction();

		// find record with Id from the database table
		student = session.get(Student.class, id);

		tx.commit();


		return student;
	}

	@Override
	public void deleteById(int studentId) {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();

		// get transaction
		Student student = session.get(Student.class, studentId);

		// delete record
		session.delete(student);

		tx.commit();
	}
}
