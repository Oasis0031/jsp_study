<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.app.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 보기</title>
</head>
<body>
   <!-- 
      product -> JSTL로 출력
      productJSON -> JS로 출력
    -->

   <%-- 
   <table border="1">
      <tr>
         <th>상품번호</th>
         <th>상품명</th>
         <th>상품가격</th>
         <th>상품재고</th>
      </tr>
      <tr>
         <td><c:out escapeXml="true" value="${product.id}"></c:out></td>
         <td><c:out escapeXml="true" value="${product.productName}"></c:out></td>
         <td><c:out escapeXml="true" value="${product.productPrice}"></c:out></td>
         <td><c:out escapeXml="true" value="${product.productStock}"></c:out></td>
      </tr>
   </table> 
--%>
<%--    
   <a href="/jstl/update.product?id=<%=product.getId() %>">수정하기</a>   
   <a href="/jstl/delete-ok.product?id=<%=product.getId() %>">삭제하기</a>    
--%>
   
   <table id="product-json" border=1>
      <tr>
         <th>상품번호</th>
         <th>상품명</th>
         <th>상품가격</th>
         <th>상품재고</th>
      </tr>
   </table>
   
   
</body>
<script type="text/javascript">
   const product = JSON.parse(`${productJSON}`)
   const table = document.querySelector("#product-json")
   
   table.innerHTML += (
      "<tr>" + 
         "<td> " + product.id + "</td>" +   
         "<td> " + product.productName + "</td>" +   
         "<td> " + product.productPrice + "</td>" +   
         "<td> " + product.productStock + "</td>" +   
      "</tr>"
   )
</script>
</html>











