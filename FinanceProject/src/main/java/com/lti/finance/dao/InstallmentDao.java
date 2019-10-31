package com.lti.finance.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;


import org.springframework.stereotype.Repository;


import com.lti.finance.entity.Installment;
import com.lti.finance.Exception.DataAccessException;

@Repository
public class InstallmentDao extends GenericDao {

	@PersistenceContext
	private EntityManager entityManager;
	@Transactional
	public void addInstallment(Installment inst) {
		upsert(inst);
	}
	
	
	public Installment fetchInstallment(int id) {
		Installment inst = (Installment) fetchById(Installment.class, id);
		return inst;
	}

	public List<Installment> fetchByEmiNo(int emiNo) {
		try {
			Query q = entityManager.createQuery("select  r from Installment as r where r.emi.emiNo=:emiNo order by i.installmentNo");
			q.setParameter("emiNo", emiNo);
			return  q.getResultList();
		} catch (NoResultException e) {
			throw new DataAccessException("No record found by emi no:" + emiNo);
		}
	}
}
