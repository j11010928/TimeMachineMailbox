package com.tmmb.service;

import com.tmmb.domain.MemberBean;

// 추상메서드 정의
public interface MemberService {

	// 아이디, 비밀번호 체크
	public MemberBean loginCheck(MemberBean mb);
	
	//회원가입
	public void joinMember(MemberBean mb);


}
