package com.lti.finance.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.lti.finance.entity.Transaction;
import com.lti.finance.Exception.DataAccessException;

@Repository
public class TransactionDao extends GenericDao {
	
	@PersistenceContext
	private EntityManager entityManager;
	@Transactional
	public void addTransaction(Transaction transaction){
		upsert(transaction);	
	}
	
	public Transaction fetchTransaction(int txno){
		Transaction transaction=(Transaction)fetchById(Transaction.class,txno);
		return transaction;
	}
	
	public List<Transaction> fetchTransactionByUserId(int userId){
		try{
			Query q =  entityManager.createQuery("select  r from Transaction as r where r.user.userId=:userId");
			q.setParameter("userId", userId);
			return q.getResultList() ;
			}
			catch(NoResultException e){
			throw new DataAccessException("No record found by User ID:"+userId);
			}
		
	}
	
	public List<Transaction> fetchPendingUserTransaction(int userId){
		try{
			Query q =  entityManager.createQuery("select  t from Transaction as t where r.user.userId=:userId && r.emi.status=:status");
			q.setParameter("userId", userId);
			q.setParameter("status", "pending");
			return q.getResultList() ;
			}
			catch(NoResultException e){
			throw new DataAccessException("No pending transactions for User ID:"+userId);
			}
		
	}

}
