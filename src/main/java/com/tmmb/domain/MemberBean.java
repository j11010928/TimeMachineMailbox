package com.tmmb.domain;

import java.sql.*;

import javax.annotation.Generated;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberBean {
	private String id;
	private String pass;
	private String name;
	private String nick;
	private String email;
	private String phone;
	private Timestamp reg_date;
}
