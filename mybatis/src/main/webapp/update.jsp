<%@page import="java.util.Optional"%>
<%@page import="com.app.vo.ProductVO"%>
<%@page import="com.app.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
</head>
<body>

<%
    // 파라미터가 비어있는지 확인 (방어 코드 최소화)
    String idStr = request.getParameter("id");
    if (idStr == null || idStr.isEmpty()) {
        out.println("<script>alert('수정할 상품 번호가 없습니다.'); history.back();</script>");
        return; 
    }

    // 숫자로 변환 후 DB 조회
    Long id = Long.parseLong(idStr);
    ProductDAO productDAO = new ProductDAO();
    Optional<ProductVO> foundProduct = productDAO.selectOne(id);

    if (foundProduct.isPresent()) {
        ProductVO product = foundProduct.get();
%>

    <form action="/mybatis/update-ok" method="post">
        <input type="hidden" name="id" value="<%=product.getId()%>" />

        <label> 
            <span>상품명</span> 
            <input name="productName" value="<%=product.getProductName()%>" />
        </label> <br>

        <label> 
            <span>상품 가격</span> 
            <input name="productPrice" value="<%=product.getProductPrice()%>" />
        </label> <br>

        <label> 
            <span>상품 재고</span> 
            <input name="productStock" value="<%=product.getProductStock()%>" />
        </label> <br>

        <button type="submit">상품 수정 완료</button>
    </form>
	
<%
    } else {
        out.println("<p>존재하지 않는 상품입니다.</p>");
    }
%>

</body>
</html>