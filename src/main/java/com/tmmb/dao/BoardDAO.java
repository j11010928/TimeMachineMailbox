package com.tmmb.dao;

import com.tmmb.domain.*;

public interface BoardDAO {
	
	public Integer getMaxIdx();
	
	// 나에게
	public void insertBoard(BoardBean bb);
	
	
	
}
