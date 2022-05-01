package com.tmmb.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tmmb.domain.MemberBean;

@Repository
public class MemberDAOImpl implements MemberDAO {

	// mybatis DB연동 자동주입 객체생성
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.tmmb.mapper.MemberMapper";
	
	
	@Override
	// 아이디, 비밀번호 체크
	public MemberBean loginCheck(MemberBean mb) {
		return sqlSession.selectOne(namespace + ".loginCheck", mb);
	}
	
	@Override
	// 회원가입
	public void joinMember(MemberBean mb) {
		sqlSession.insert(namespace + ".joinMember",mb);
	}


}
