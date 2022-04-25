package com.tmmb.service;

import java.sql.*;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tmmb.dao.*;
import com.tmmb.domain.*;

@Service
public class BoardServiceImpl implements BoardService {

	// 객체 생성
	@Inject
	private BoardDAO boardDAO;
	
	
	@Override
	public void insertBoard(BoardBean bb) {
		
		// num구해서 +1 넣기
				if(boardDAO.getMaxIdx()==null) {
					bb.setIdx(1);

				}else {
					bb.setIdx(boardDAO.getMaxIdx()+1);
					
				}
				// readcount 0 넣기
				bb.setRead_count(0);
				// date 현시스템 날짜 넣기
				bb.setReg_date(new Timestamp(System.currentTimeMillis()));
				//답글 관련
//				bb.setRe_lev(0);
//				bb.setRe_seq(0);
				System.out.println(bb.getIdx());
				System.out.println(bb.getContent());
				System.out.println(bb.getTitle());
				System.out.println(bb.getReg_date());
				System.out.println(bb.getPrivate_yn());
				boardDAO.insertBoard(bb);
				
				
	}
	
}
