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
//	private MemberService memberservice;
	
	
	// 가상주소
	// http://localhost:8080/controller/member/loginForm
	
	
	// 로그인 
	@RequestMapping(value = "loginForm", method = RequestMethod.GET)
	public String login() {
		log.info("member - loginForm!!!!!");
		
		return "member/loginForm";
	}
	
	
	// 로그인 post Action
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String insertPost(MemberBean mb, HttpSession session, Model model) {
		log.info("member - insert loginAction!!!!");
		log.info("member - insert loginAction!!!!, ID : {}, Pass : {}", mb.getId(), mb.getPass());
		
		// login 작업
//		MemberBean mb2 =  
		
		
		
		return "/member/login";
	}
	
	// 회원가입
	@RequestMapping(value = "joinForm", method = RequestMethod.GET)
	public String join() {
		log.info("member - joinForm");
		
		return "member/joinForm";
	}
	
	
}
