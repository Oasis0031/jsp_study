package com.app.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @WebServlet("/home")
public class MyServlet extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
//      인코딩 설정 필수!
      req.setCharacterEncoding("UTF-8");
      resp.setContentType("text/html; charset=utf-8");
         
      PrintWriter out = resp.getWriter();
      String name = req.getParameter("name");	
      int age = Integer.parseInt(req.getParameter("age"));
      
      out.print("<h1>Hello, " + name + " JSP World!</h1>");
      out.print("<h2>이름: " + name + "</h2>");
      out.print("<h2>나이: " + age + "살</h2>");
      out.print("<h2>만나이: " + (age - 1) + "살</h2>");
      out.close();
   }
}




