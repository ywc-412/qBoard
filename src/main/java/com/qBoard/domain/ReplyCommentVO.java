package com.qBoard.domain;

import lombok.Data;

@Data
public class ReplyCommentVO {
	private int qno;
	private int rno;
	private int commentNo;
	private int reparent;
	private int redepth;
	private int reorder;
	private String writer;
	private String content;
	private int regroup;
	private int deleteChk;
}
