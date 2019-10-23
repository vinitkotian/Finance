package com.lti.finance.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


import org.springframework.stereotype.Repository;

import com.lti.finance.Exception.DataNotFoundException;
import com.lti.finance.entity.Product;
import com.lti.finance.entity.User;

@Repository 
public class FinanceDao{

	@PersistenceContext
	private EntityManager entityManager;

	public User fetchByUsername(String username) throws DataNotFoundException{

		try {
			String query="select u from User u where u.userName=:un";
			Query q =entityManager.createQuery(query);
			q.setParameter("un", username);
			return (User)q.getSingleResult();
		}
		catch(Exception e) {
			throw new DataNotFoundException("User is not registered");
		}
	}

	public List<Product> fetchAllProduct(){
		String query="select p from Product p";
		Query q =entityManager.createQuery(query);

		return  q.getResultList();

	}
	
	

}
