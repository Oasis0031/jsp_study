<%@page import="com.app.vo.PostVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<%
	List<PostVO> posts = (List<PostVO>)request.getAttribute("posts");
%>

 <table>
   <tr>
      <th>게시글 번호</th>
      <th>제목</th>
      <th>내용</th>
      <th>게시일</th>
   </tr>
   <%
      for(PostVO post : posts) {
   %>
      <tr>
         <td><%=post.getId() %></td>
         <td><a href="/post/read.post?id=<%=post.getId() %>"><%=post.getPostTitle() %></a></td>
         <td><%=post.getPostContent() %></td>
         <td><%=post.getPostCreateAt() %></td>
      </tr>
   <% 
      }
   %>
   </table>


</body>
</html>