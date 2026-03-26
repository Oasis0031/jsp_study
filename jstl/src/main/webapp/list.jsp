<%@page import="java.util.List"%>
<%@page import="com.app.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록 페이지</title>
</head>
<body>

<!-- 
   테이블 화면 출력
-->

   <!-- 
      forEach: 반복문
    -->
<%--    <c:forEach var="num" begin="1" end="10" step="2">
      <p>${num}</p>
   </c:forEach>
   
   <c:forEach var="item" items="${products}">
      ${item.getProductName()}
   </c:forEach> --%>

   <%-- <c:out value="${productDescription}" escapeXml="true"></c:out>
      
   <table border="1">
   <tr>
      <th>상품번호</th>
      <th>상품명</th>
      <th>상품가격</th>
      <th>상품재고</th>
   </tr>
   <c:forEach var="product" items="${products}">
      <tr>
         <td>${product.id}</td>
         <td>
            <a href="/jstl/read.product?id=${product.id}">
               ${product.productName}
            </a>
         </td>
         <td>${product.productPrice}</td>
         <td>${product.productStock}</td>
      </tr>
   </c:forEach>
   </table> --%>

   <table border=1></table>
   <!-- 
      테이블 태그에 상품 리스트 JS로 출력하기
    -->
   
   
</body>
<script type="text/javascript">

   const table = document.querySelector("table");
   const products = JSON.parse(`${products}`)
   
   /* 템플릿 리터럴 사용 불가! */
/*    products.forEach((product) => {
      table.innerHTML += `
         <td>${product.id}</td>
         <td>${product.productName}</td>
         <td>${product.productPrice}</td>
         <td>${product.productStock}</td>
      `
   }) 
*/
   /* 해결 */
   products.forEach((product) => {
      table.innerHTML += (
         "<td>" + product.id + "</td>" +
         "<td>" + product.productName + "</td>" +
         "<td>" + product.productPrice + "</td>" +
         "<td>" + product.productStock + "</td>"
      )}
   )
   

</script>
</html>







