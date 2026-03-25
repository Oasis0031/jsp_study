package com.app.vo;

import java.sql.Date;
import java.util.Objects;

/**
 * 
 */
public class PostVO {
	private Long id;
	private String postTitle;
	private String postContent;
	private Date postCreateAt;
	
	public PostVO() {;}

	public PostVO(Long id, String postTitle, String postContent, Date postCreateAt) {
		super();
		this.id = id;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postCreateAt = postCreateAt;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public Date getPostCreateAt() {
		return postCreateAt;
	}

	public void setPostCreateAt(Date postCreateAt) {
		this.postCreateAt = postCreateAt;
	}

	@Override
	public String toString() {
		return "PostVO [id=" + id + ", postTitle=" + postTitle + ", postContent=" + postContent + ", postCreateAt="
				+ postCreateAt + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, postContent, postCreateAt, postTitle);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PostVO other = (PostVO) obj;
		return Objects.equals(id, other.id) && Objects.equals(postContent, other.postContent)
				&& Objects.equals(postCreateAt, other.postCreateAt) && Objects.equals(postTitle, other.postTitle);
	}

	
	
}
