<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
</head>
<body>
	<form method="post" action="/flow/update-ok.product">
		<div>
			<p>상품명</p>
			<input name="productName" placeholder="상품명을 입력하세요."/>
		</div>
	
		<div>
			<p>상품가격</p>
			<input name="productPrice" placeholder="상품가격을 입력하세요."/>
		</div>
	
		<div>
			<p>재고량</p>
			<input name="productStock" placeholder="재고량을 입력하세요."/>
		</div>
		<button>상품정보 수정</button>
	
	</form>
</body>
</html>