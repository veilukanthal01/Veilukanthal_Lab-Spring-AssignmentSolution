package com.gl.srms.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gl.srms.dao.UserDao;
import com.gl.srms.entity.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	private SessionFactory sessionFactory;

	// create session
	private Session session;

	@Autowired
	UserDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();
		}


	}

	@Override
	public User findUserByName(String username) {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		String query="";
		query ="from User where username like '%"+username+"%'";
		User user= (User) session.createQuery(query).getSingleResult();
		tx.commit();
		return user;
	}

}
