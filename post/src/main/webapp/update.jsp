<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>

	<form action="/post/update-ok.post" method="post">
	<input type="hidden" name="id" value="${post.id}">
		<div id="title">
			<span>제목</span>
			<span>${postCreateAt}</span>
			<input name="postTitle" type="text" value="${post.postTitle}" ">
		</div>
		<div id="content">
			<span>내용</span>
			<input name="postContent" type="text" value="${post.postContent}">
		</div>
		<button>게시글 수정</button>
	</form>

</body>
</html>