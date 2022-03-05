package com.tmmb.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tmmb.domain.*;

@Repository
public class BoardDAOImpl implements BoardDAO {

	// mybatis DB연동 자동주입 객체생성
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.tmmb.mapper.BoardMapper";
	
	
	@Override
	public void insertBoard(BoardBean bb) {
		sqlSession.insert(namespace + ".insertBoard",bb);
	}

	public Integer getMaxIdx() {
		return sqlSession.selectOne(namespace + ".getMaxIdx");
	}
	
	
}

