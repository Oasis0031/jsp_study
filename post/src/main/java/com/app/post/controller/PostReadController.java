package com.app.post.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PostDAO;
import com.app.exception.PostNotFoundException;
import com.app.vo.PostVO;

public class PostReadController implements Action {

	@Override
	public Result excute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		PostDAO postDAO = new PostDAO();
	
		Long id = Long.parseLong(req.getParameter("id"));
		Optional<PostVO> foundPost = postDAO.select(id);
		
		PostVO post = foundPost.orElseThrow(() -> {throw new PostNotFoundException("게시글을 찾을 수 없습니다.");});
		req.setAttribute("post", post);	
		
		result.setPath("/read.jsp");
		
		return result;
	}

}
