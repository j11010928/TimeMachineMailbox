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
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	private MemberService memberService;
	
	
	// 가상주소
	// http://localhost:8080/controller/member/loginForm
	

	
	// 나에게
	@RequestMapping(value = "board/to_me", method = RequestMethod.GET)
	public String toMe() {
		log.info("board - to_me!!!!!");
		
		return "board/to_me";
	
	}
	
	// 친구에게
	@RequestMapping(value = "board/to_friend", method = RequestMethod.GET)
	public String toFriend() {
		log.info("board - to_friend!!!!!");
		
		return "board/to_friend";
	
	}
	
	// 하늘에게
	@RequestMapping(value = "board/to_sky", method = RequestMethod.GET)
	public String toSky() {
		log.info("board - to_sky!!!!!");
		
		return "board/to_sky";
	
	}
	
	// 글쓰기
	
}
