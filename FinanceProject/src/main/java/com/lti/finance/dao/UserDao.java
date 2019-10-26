package com.lti.finance.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.lti.finance.entity.EmiCard;
import com.lti.finance.entity.User;

@Repository
public class UserDao extends GenericDao  {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public List<User> fetchAllEmicardUser(){
		String query="select u from User u";
		Query q =entityManager.createQuery(query);

		return  q.getResultList();
	}
	
	public User fetchUserById(int useId) {
		return (User) fetchById(User.class,useId );
	}
	
	@Transactional
	public void updateUser(User user) {
		upsert(user);
	}
}
