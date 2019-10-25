package com.lti.finance.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.lti.finance.entity.Emi;
import com.lti.finance.Exception.DataAccessException;

@Repository
public class EmiDao extends GenericDao {

	@PersistenceContext
	private EntityManager entityManager;
	@Transactional
	public void addEmi(Emi Emi) {
		upsert(Emi);

	}

	public Emi fetchEmi(int EmiId) {
		Emi Emi = (Emi) fetchById(Emi.class, EmiId);
		return (Emi);
	}

	public Emi fetchEmiByTransactonNo(int txno) {
		try {
			Query q = entityManager.createQuery("select  r from Emi as r where r.transaction.transactionId=:txno");
			q.setParameter("txno", txno);
			Emi Emi = (Emi) q.getSingleResult();
			return Emi;
		} catch (NoResultException e) {
			throw new DataAccessException("No record found by Transaction number:" + txno);
		}
	}
	
	

}
