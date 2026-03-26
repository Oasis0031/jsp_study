package com.app.product.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

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

//      만약 유저가 없으면 예외 던짐
      ProductVO product = foundProduct.orElseThrow(ProductNotFoundException::new);
      req.setAttribute("product", product);
      
      JSONObject productJSON = new JSONObject(product);
      req.setAttribute("productJSON", productJSON);
      
//      포워드
//      어디로
      result.setPath("/read.jsp");
      
      return result;
   }

}
