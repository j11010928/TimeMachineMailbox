package com.tmmb.domain;

import java.sql.Date;

import javax.annotation.Generated;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberBean {
	private String id;
	private Number phone;
	private String email;
	private String name;
	private String pass;
	private Date reg_date;
}
