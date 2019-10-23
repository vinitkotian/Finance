package com.lti.finance.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.finance.dto.ProductData;
import com.lti.finance.entity.Product;
import com.lti.finance.service.FinanceService;

@Controller
@SessionAttributes({"product","user"})
public class ProductController {
	
	@Autowired
	private FinanceService fs;
	
	@RequestMapping(path="/add.lti", method=RequestMethod.POST)
	public String add(ProductData data,Map model) {
		
		String path = "d:/uploads/";
		String filename = data.getPname() + "-" + data.getProductimg().getOriginalFilename();
		String finalpath = path + filename;
		try {
			data.getProductimg().transferTo(new File(finalpath));
		} 
		catch (IOException e) {
			e.printStackTrace();
		}
		
		Product product = new Product();
		product.setProductName(data.getPname());
		product.setProductDetails(data.getPdetails());
		product.setProductPrice(data.getPrice());
		product.setProductIMG(filename);
		System.out.println(product.getProductName());
		
	
		fs.addProduct(product);
		return "confirmation.jsp";
	
}
	
	
	@RequestMapping(path="/getProduct.lti", method=RequestMethod.GET)
	public String fetchProduct(HttpServletRequest request, ModelMap model) {
		String projpath = request.getServletContext().getRealPath("/");
		
		File projectUploadsFolder = new File(projpath + "uploads");
		if(!projectUploadsFolder.exists())
			projectUploadsFolder.mkdir();
		
		String uploadsFolder = "d:/uploads/";
		String projFolder = projpath + "uploads/";
		
		List<Product> products=fs.fetchAllProduct();
		for(Product product : products) {
			 try {
				FileCopyUtils.copy(new File(uploadsFolder + product.getProductIMG()), new File(projFolder + product.getProductIMG()));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		model.put("products", products);
//		for(Product p : products) {
//			System.out.println(p.getProductName());
//		}
		
	
		if(model.get("user") == null)
		    return "productlist.jsp";
		else 
			return "productlistlogin.jsp";
		}
	
	@RequestMapping(path="/buyProduct.lti", method=RequestMethod.GET)
	public String buyProductButton(HttpServletRequest request, Map model,@RequestParam("pname") int value) {
			System.out.println(value);
			
			String projpath = request.getServletContext().getRealPath("/");
			
			File projectUploadsFolder = new File(projpath + "uploads");
			if(!projectUploadsFolder.exists())
				projectUploadsFolder.mkdir();
			
			String uploadsFolder = "d:/uploads/";
			String projFolder = projpath + "uploads/";
			Product product=fs.fetchProductById(value);
			 try {
					FileCopyUtils.copy(new File(uploadsFolder + product.getProductIMG()), new File(projFolder + product.getProductIMG()));
				} catch (IOException e) {
					e.printStackTrace();
				}
			
			model.put("product", product);
			return "buyProducts.jsp";
		}
}