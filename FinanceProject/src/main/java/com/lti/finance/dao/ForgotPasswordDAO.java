package com.lti.finance.dao;

import javax.persistence.Query;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.finance.dto.ForgotPasswordDTO;


@Repository
public class ForgotPasswordDAO extends GenericDao{
	@PersistenceContext
	private EntityManager entityManager;

	public int fetchCountOfUser(ForgotPasswordDTO forgotPasswordDTO) {
		System.out.println("in Dao");
		Query query = entityManager.createQuery("select count(u) from User u where u.phoneNo =:phoneno");
		query.setParameter("phoneno", forgotPasswordDTO.getPhoneNo());
		System.out.println("after dao");
		return (int) query.getSingleResult();
	}
	
	@Transactional
	public void updatePassword(ForgotPasswordDTO forgotPasswordDTO) {

		Query query = entityManager
				.createQuery("update Register as e set e.password=:password where e.username=:username");
		query.setParameter("username",forgotPasswordDTO.getUsername());
		query.setParameter("password", forgotPasswordDTO.getPassword());
		query.executeUpdate();
	}
}
