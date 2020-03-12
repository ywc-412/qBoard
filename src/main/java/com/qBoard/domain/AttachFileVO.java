package com.qBoard.domain;

import lombok.Data;

@Data
public class AttachFileVO {
	private int qno;
	private String uuid;
	private String uploadPath;
	private String fileName;
}
