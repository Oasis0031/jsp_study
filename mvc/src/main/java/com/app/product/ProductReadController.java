package com.app.product;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.exception.ProductNotFoundException;
import com.app.vo.ProductVO;

public class ProductReadController implements Action {

	@Override
	public Result excute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		
		Long id = Long.parseLong(req.getParameter("id"));
		Optional<ProductVO> foundProduct = productDAO.select(id);

		ProductVO product = foundProduct.orElseThrow(() -> {throw new ProductNotFoundException("상품을 찾을 수 없습니다.");});
		req.setAttribute("product", product);
		
		//어디로, 포워드
		result.setPath("/read.jsp");
		
		
		return result;
	}

}
