package com.qBoard.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class QuestionBVO {
	private Integer qno;
	private String title;
	private String content;
	private Date writeDate;
	private Date updateDate;
	private int privacyChk;
	private int replyChk;
	
	private List<AttachFileVO> attachList;
}
