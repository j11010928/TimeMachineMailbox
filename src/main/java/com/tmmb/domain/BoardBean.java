package com.tmmb.domain;

import java.sql.*;

import javax.annotation.Generated;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardBean {
	private int idx;
	private String name;
	private String title;
	private String content;
	private Timestamp reg_date;
	private String file;
	private int read_count;
	private int like_count;
	private String private_yn;
}
