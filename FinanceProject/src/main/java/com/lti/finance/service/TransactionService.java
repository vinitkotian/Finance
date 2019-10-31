package com.lti.finance.service;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import com.lti.finance.dao.EmiCardDao;
import com.lti.finance.dao.EmiDao;
import com.lti.finance.dao.GenericDao;
import com.lti.finance.dao.InstallmentDao;
import com.lti.finance.dao.ProductDao;
import com.lti.finance.dao.TransactionDao;
import com.lti.finance.dao.UserDao;
import com.lti.finance.entity.Emi;
import com.lti.finance.entity.EmiCard;
import com.lti.finance.entity.Installment;
import com.lti.finance.entity.Product;
import com.lti.finance.entity.Transaction;
import com.lti.finance.entity.User;

@Service
public class TransactionService {

	@Autowired
	private UserDao userDao;

	@Autowired
	private ProductDao productDao;

	@Autowired
	private TransactionDao transactionDao;

	@Autowired
	private InstallmentDao installmentDao;

	@Autowired
	private EmiCalculator calc;

	@Autowired
	private EmiCardDao cardDao;

	public boolean transactionValidity(int userId, int pId) {
		User user = (User) userDao.fetchUserById(userId);
	
		Product product = (Product) productDao.fetchProductById(pId);

		EmiCard card = user.getEmiCard();
		double maxLimit = card.getCardLimit();
		double usedAmount = card.getCreditUsed();
		double balance = maxLimit - usedAmount;
		if (("active".equals(card.getCardstatus())) && ((balance) >= product.getProductPrice())) {
			card.setCreditUsed(card.getCreditUsed() + product.getProductPrice());
			user.setEmiCard(card);
			userDao.updateUser(user);
			
			return true;
		}
		
		return false;
	}

	// New Product purchase
	public boolean buyNow(int userId, int pId, int scheme) {
		User user = (User) userDao.fetchUserById(userId);
		Product product = (Product) productDao.fetchProductById(pId);
		if (transactionValidity(userId, pId)) {
			// Adding Transaction record for product purchase.

			
			Transaction transaction = new Transaction();

			Emi emi = new Emi();

			transaction.setScheme(scheme);
			transaction.setUser(user);
			transaction.setProduct(product);

			// Adding Emi Record for Transaction.
			emi.setStatus("pending");
			emi.setStartDate(LocalDateTime.now());
			emi.setInstallmentAmount(calc.emiCalculate(product.getProductPrice(), scheme));
			emi.setEndDate(LocalDateTime.now().plusMonths(scheme));
			emi.setTransaction(transaction);
			// Adding installment for emi.
			Set<Installment> installments = new HashSet<Installment>();

			for (int i = 0; i < scheme; i++) {

				Installment inst = new Installment();
				inst.setInstallmentNo(i);
				inst.setEmi(emi);
				inst.setDueDate(LocalDateTime.now().plusMonths(i));
				if (i == 0)
					inst.setDatePaid(LocalDateTime.now());
				else
					inst.setDatePaid(null);
				installments.add(inst);

			}

			emi.setInstallment(installments);
			transaction.setEmi(emi);
			
			transactionDao.upsert(transaction);

			return true;
		}
		return false;
	}

	public boolean emiPayment(int emiNo, int installmentNo) {
		Installment installment = (Installment) installmentDao.fetchById(Installment.class, installmentNo);
			if (installment.getDatePaid() == null) {
				installment.setDatePaid(LocalDateTime.now());
				installmentDao.addInstallment(installment);
				return true;
			}
		return false;
	}
}
