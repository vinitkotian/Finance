package com.lti.finance.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.finance.entity.EmiCard;

@Repository
public class EmiCardDao extends GenericDao {
	
	@Autowired
	GenericDao genericDao;
	
	@Transactional
	public void addEmiCard(EmiCard emiCardNo){
		genericDao.upsert(emiCardNo);
	}
	
	public EmiCard fetchEmiCardByNo(EmiCard emiCardNo){
		return((EmiCard)fetchById(EmiCard.class, emiCardNo));
		
	}

}
