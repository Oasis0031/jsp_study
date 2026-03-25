package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.exception.ProductNotFoundException;

public class ProductUpdateController implements Action {

		//강제성을 부여하기 위해서 Action 구현
	@Override
	public Result excute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		
		Long id = Long.parseLong(req.getParameter("id"));
		req.setAttribute("product", productDAO.select(id).orElseThrow(ProductNotFoundException::new)); 
		
		result.setPath("/update.jsp");
		
		return result;
	}

}
