package com.tmmb.service;

import java.sql.*;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tmmb.dao.MemberDAO;
import com.tmmb.domain.MemberBean;

@Service
public class MemberServiceImpl implements MemberService {

	// 객체 생성
	@Inject
	private MemberDAO memberDAO;
	
	
	// 아이디, 비밀번호 체크
	@Override
	public MemberBean loginCheck(MemberBean mb) {
		return memberDAO.loginCheck(mb);
	}
	
	public void joinMember(MemberBean mb) {
		mb.setReg_date(new Timestamp(System.currentTimeMillis()));
		memberDAO.joinMember(mb);
	}
	

}
