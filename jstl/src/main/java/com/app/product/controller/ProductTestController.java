package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class ProductTestController implements Action {

	@Override
	public Result excute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		System.out.println("컨트롤러 실행됨");
		req.setAttribute("name", "홍길동");
		req.setAttribute("age", 20);
		req.setAttribute("hobby", "사랑");
		result.setPath("/test.jsp");
		
		return result;
	}  

}
