<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글을 입력하세요</title>
</head>
<body>

	<form action="/post/write-ok.post" method="post">
		<div id="title">
			<span>제목</span>
			<span>${postCreateAt}</span>
			<input name="postTitle" type="text" placeholder="제목을 입력하세요.">
		</div>
		<div id="content">
			<span>내용</span>
			<input name="postContent" type="text" placeholder="내용을 입력하세요.">
		</div>
		<button>게시글 등록</button>
	</form>
</body>
</html>