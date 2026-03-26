<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 테스트</title>
</head>
<body>
	<!-- 이름 들고와서 출력하기 -->
	<!-- Web Content -->
	<%-- <h1><%=request.getParameter("name") %></h1> --%>

	<!-- Param -->
	<%-- 
   <h1><%=request.getAttribute("name") %></h1>
   --%>

<!-- 

	<h1>${name}</h1>
	<c:if test="${name == '홍길동'}">
		<p>이름이 홍길동 맞음</p>
	</c:if>
	<c:if test="${name != '홍길동'}">
		<p>이름이 홍길동 아님</p>
	</c:if>

	<h1>${age}</h1>
	<c:if test="${empty age}">
		<h1>나이를 입력하세요.</h1>
	</c:if>
	<c:if test="${not empty age}">
		<c:if test="${age >= 20}">
			<h1>성인</h1>
		</c:if>
		<c:if test="${age < 20}">
			<h1>성인이 아님.</h1>
		</c:if>
	</c:if>
 -->
	
	<c:choose>
		<c:when test="${empty age}">
			<h1>나이를 입력하세요.</h1>
		</c:when>
		<c:when test="${age >= 20 and age <= 29}">
			<h1>성인입니다.</h1>
		</c:when>
		<c:otherwise>
			<h1>20대가 아닙니다.</h1>
		</c:otherwise>
	</c:choose>

	   <!-- 
      취미를 받아서 취미를 출력하기
      만약 취미가 공부라면 "코딩을 합니다"
      만약 취미가 요리라면 "요리를 합니다"
      만약 취미가 축구라면 "축구를 합니다"를 출력
      그 외라면 "취미가 있습니다." 를 출력
      취미가 없다면 "취미가 없습니다"를 출력
    -->

	<c:choose>
		<c:when test="${empty hobby}">
		<h1>취미가 없어요.</h1>
		</c:when>
		<c:when test="${hobby == '공부' }">
		<h1>코딩을 합니다.</h1>
		</c:when>
		<c:when test="${hobby == '요리' }">
		<h1>요리를 합니다.</h1>
		</c:when>
		<c:when test="${hobby == '축구' }">
		<h1>축구를 합니다.</h1>
		</c:when>
		<c:when test="${hobby == '사랑' }">
		<h1>미소가 아름다운 그녀 취미는 사랑이라 하네</h1>
		</c:when>
		<c:otherwise>
		<h1>취미가 있긴 합니다.</h1>
		</c:otherwise>
		
	
	</c:choose>

</body>
</html>





