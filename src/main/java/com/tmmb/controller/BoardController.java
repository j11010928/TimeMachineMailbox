package com.tmmb.controller;


import java.io.*;
import java.util.*;

import javax.annotation.*;
import javax.inject.Inject;
import javax.servlet.http.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.*;

import com.tmmb.domain.*;
import com.tmmb.service.*;


@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Inject
	private BoardService boardService;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	
	
	// 가상주소
	// http://localhost:8080/controller/board/to_me
	

	
	// 나에게
	@RequestMapping(value = "to_me", method = RequestMethod.GET)
	public String toMe() {
		log.info("board - to_me!!!!!");
		
		return "board/to_me";
	
	}
	
	// 친구에게
	@RequestMapping(value = "to_friend", method = RequestMethod.GET)
	public String toFriend() {
		log.info("board - to_friend!!!!!");
		
		return "board/to_friend";
	
	}
	
	// 하늘에게
	@RequestMapping(value = "to_sky", method = RequestMethod.GET)
	public String toSky() {
		log.info("board - to_sky!!!!!");
		
		return "board/to_sky";
	
	}
	
	// 글쓰기
	@RequestMapping(value = "toMeForm", method = RequestMethod.POST)
	public String toMeForm(HttpServletRequest request, MultipartFile file ) throws Exception {
		
//		log.info("파일이름 : {} " , file.getOriginalFilename());
//		log.info("파일크기 : {} " , file.getSize());
//		log.info("파일타입 : {} " , file.getContentType());
		
		UUID uid = UUID.randomUUID();
		String saveName = uid.toString()+"_"+file.getOriginalFilename();
		File target = new File(uploadPath, saveName);
		FileCopyUtils.copy(file.getBytes(), target);
		
		BoardBean bb = new BoardBean();
		bb.setContent(request.getParameter("content"));
		bb.setTitle(request.getParameter("title"));
		bb.setPrivate_yn(request.getParameter("private_yn"));
		
		boardService.insertBoard(bb);
		
//		log.info("board - insert toMeFormAction!!!!");
//		log.info("board - insert toMeFormAction!!!!, title : {}, yn : {}", bb.getTitle(), bb.getPrivate_yn());
//		boardService.insertBoard(bb);
		
		return "main";
	}
	
}
