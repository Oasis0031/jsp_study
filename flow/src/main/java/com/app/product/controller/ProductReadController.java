package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;

public class ProductReadController implements Action {

    public Result excute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
        ProductDAO productDAO = new ProductDAO();
        
        // 1. 파라미터 가져오기
        Long id = Long.parseLong(req.getParameter("id"));
        
        // 2. productDAO.select(id) 결과 처리
        // 람다식에서 throw 문을 직접 쓰는 게 아니라 예외 객체를 생성해서 리턴해야 합니다.
        ProductVO product = productDAO.select(id)
                .orElseThrow(() -> new RuntimeException("해당 ID의 상품을 찾을 수 없습니다: " + id));
        
        // 3. 결과 설정 (예: request attribute에 담기 및 경로 설정)
        req.setAttribute("product", product);
        result.setPath("product-detail.jsp"); // 예시 경로
        result.setRedirect(false);
        
        return result;
    }

}