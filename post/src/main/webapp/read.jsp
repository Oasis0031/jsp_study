<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
      PostVO post = (PostVO)request.getAttribute("post");
      System.out.println(post);
   %>
   <table border="1">
      <tr>
         <th>게시글 번호</th>
         <th>제목</th>
         <th>내용</th>
         <th>게시일</th>
      </tr>   
      <tr>
         <td><%=post.getId() %></td>
         <td><%=post.getPostTitle() %></td>
         <td><%=post.getPostContent() %></td>
         <td><%=post.getPostCreateAt() %></td>
      </tr>	
   </table>
   
   <a href="/post/update.post?id=<%=post.getId() %>">수정하기</a>   
   <a href="/post/delete-ok.post?id=<%=post.getId() %>">삭제하기</a>   
   
	
</body>
</html>