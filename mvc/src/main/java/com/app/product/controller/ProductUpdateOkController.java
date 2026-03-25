package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;

public class ProductUpdateOkController implements Action {

	@Override
	public Result excute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		ProductVO productVO = new ProductVO();
		
		// 1. 화면에서 받은 값을 DB에 반영하여 수정한다.
		// 화면에서 받은 값을 가져오자
		String id = req.getParameter("id");
		String productName = req.getParameter("productName");
		String productPrice = req.getParameter("productPrice");
		String productStock =  req.getParameter("productStock");
		
		// DB에 반영하려면 DB에 접근하는객체 -> ProductDAO 필요
		// update에 값을 한 번에 담아서 보내자 -> ProductVO
		// ProductVO에 화면에서 받은 값을 모두 담자
		
		productVO.setId(Long.parseLong(id));
		productVO.setProductName(productName);
		productVO.setProductPrice(Integer.parseInt(productPrice));
		productVO.setProductStock(Integer.parseInt(productStock));
		
		productDAO.update(productVO);
		
		// 2. 어디로, 어떻게를 정의한다.
		result.setPath("/mvc/read.product?id=" + id);
		result.setRedirect(true);
		return result;
	}	

}
