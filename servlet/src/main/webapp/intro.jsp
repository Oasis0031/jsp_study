<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자기 소개하기!</title>
</head>
<body>
<%--    
   <%
      for(int i = 0; i < 10; i++){
   %>
         <h1>"안녕"</h1>
   <% 
      }
   %> 
--%>
   
   <form action="home" method="get" id="intro-from">
      <input name="name" placeholder="이름을 입력하세요." />
      <p id="name-confirm"><p>
      <input name="age" placeholder="나이를 입력하세요" /> 
      <p id="age-confirm"><p>
      <button class="submit-button" type="button">전송</button>
   </form>
   
</body>
<script>
   const form = document.querySelector("form#intro-from");
   const name = document.querySelector("input[name='name']");
   const age = document.querySelector("input[name='age']");
   const nameResult = document.getElementById("name-confirm");
   const ageResult = document.getElementById("age-confirm");
   const button = document.querySelector(".submit-button");
   
   button.addEventListener("click", () => {
      if(!name.value){
         nameResult.innerText = "이름을 입력하세요";
         nameResult.style.color = "red";
         return;
      }
      
      nameResult.innerText = "멋진 이름이네요~!";
      nameResult.style.color = "blue";
      
      if(!age.value){
         ageResult.innerText = "나이를 입력하세요";
         ageResult.style.color = "red";
         return;
      }
      
      ageResult.innerText = "좋은 나이네요!";
      ageResult.style.color = "blue";
      form.submit();
      
      
      
   })
</script>
</html>



