package com.tmmb.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tmmb.domain.MemberBean;
import com.tmmb.service.MemberService;


@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberService memberService;
	
	
	// 가상주소
	// http://localhost:8080/controller/member/loginForm
	
	
	// 로그인 Form
	@RequestMapping(value = "loginForm", method = RequestMethod.GET)
	public String login() {
		log.info("member - loginForm!!!!!");
		
		return "member/loginForm";
	}
	
	
	// 로그인
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginPost(MemberBean mb, HttpSession session, Model model) {
		log.info("member - insert loginAction!!!!");
		log.info("member - insert loginAction!!!!, ID : {}, Pass : {}", mb.getId(), mb.getPass());
		
		// login check
		MemberBean mb2 = memberService.loginCheck(mb);
		
		// 비밀번호가 null이 아닐 때
		if (mb2.getPass() != null) {
			log.info("member - login 로그인 성공!!!");
			
			// 세션값 생성
			session.setAttribute("id", mb.getId());
			
			// 홈화면 이동
			return "redirect:../";
			
		} else {
			// 아이디, 비밀번호 틀림
			log.error("member - login 로그인 실패!!!");
			model.addAttribute("loginMessage", "아이디와 비밀번호가 일치하지 않습니다.");
			
			return "member/message";
		}
		
	}
	
	// 회원가입 Form
	@RequestMapping(value = "joinForm", method = RequestMethod.GET)
	public String join() {
		log.info("member - joinForm");
		
		return "member/joinForm";
	}
	
	
	// 회원가입 
	@RequestMapping(value = "member/join", method = RequestMethod.POST)
	public String joinPost(MemberBean mb) {
		log.info("member - join!!!!!");
		memberService.joinMember(mb);
		
		return "redirect:/";
	}
	
	// 마이페이지
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public String mypage() {
		log.info("member - mypage!!!");
		
		return "member/mypage";
	}
	
	// 로그아웃
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		log.info("member - logout!!!");
		
		model.addAttribute("logoutMessage", "다음에 다시봐요~");
		
		// session 초기화
		session.invalidate();
		log.info("member - logout, 세션 초기화~~~");
		
		return "member/message";
		
	}
	
}
