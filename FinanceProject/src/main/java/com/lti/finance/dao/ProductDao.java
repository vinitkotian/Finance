package com.lti.finance.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.finance.entity.Product;

@Repository
public class ProductDao extends GenericDao {
	@PersistenceContext
	private EntityManager entityManager;

	@Autowired
	private GenericDao genericDao;
	
	public List<Product> fetchAllProduct(){
		String query="select p from Product p";
		Query q =entityManager.createQuery(query);

		return  q.getResultList();


}
	
	public Product fetchProductById(int id) {
		return (Product) genericDao.fetchById(Product.class, id);
	}
}
