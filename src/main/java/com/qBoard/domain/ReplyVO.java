package com.qBoard.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {
	private int qno; 
	private int rno;
	private String title; 
    private String content;
	private Date writeDate;
    private Date updateDate;
}
