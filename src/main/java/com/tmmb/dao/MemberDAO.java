package com.tmmb.dao;

import com.tmmb.domain.MemberBean;

public interface MemberDAO {

	// 아이디, 비밀번호 체크
	public MemberBean loginCheck(MemberBean mb);
	
	// 회원가입
	public void joinMember(MemberBean mb);
	

}
