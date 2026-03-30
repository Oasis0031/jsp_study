package com.app.dao;

import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.MemberVO;

public class MemberDAO {
	private SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void save(MemberVO memberVO) {
		sqlSession.insert("member.insert", memberVO);
	}
	
	
	//이메일과 회원여부 조회
	public Optional<MemberVO> findByMemberEmailAndMemberPassword(MemberVO memberVO) {
		return Optional.ofNullable(sqlSession.selectOne("member.selectByMemberEmailAndMemberPassword", memberVO));
	}
	
	//이메일로 회원 여부 조회
	public int existsByMemberEmail(String memberEmail) {
		return sqlSession.selectOne("member.existsByMemberEmail", memberEmail);
	}
	
	//이메일로 회원조회
	public Optional<MemberVO> findByMemberEmail(String memberEmail){
		return Optional.ofNullable(sqlSession.selectOne("member.selectByMemberEmail", memberEmail));
	}
	//ID로 회원조회
	public Optional<MemberVO> findById(Long id){
		return Optional.ofNullable(sqlSession.selectOne("member.selectById", id));
	}
	
	public Long selectIdByMemberEmail(String memberEmail) {
		return sqlSession.selectOne("member.selectIdByMemberEmail", memberEmail);
	}
	
}
