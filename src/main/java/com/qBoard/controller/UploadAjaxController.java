package com.qBoard.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.qBoard.domain.AttachFileVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class UploadAjaxController {
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		
		String str = sdf.format(date);
		
		return str.replace("-", File.separator);
	}
	
	@PostMapping("/uploadAjaxAction")
	@ResponseBody
	public ResponseEntity<List<AttachFileVO>> uploadAjaxAction(MultipartFile[] uploadFile) {
		List<AttachFileVO> list = new ArrayList<AttachFileVO>();
		
		String uploadFolder = "C:\\upload";
		
		String folderName = getFolder();
		
		File uploadPath = new File(uploadFolder, folderName);
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		for (MultipartFile multi : uploadFile) {
			AttachFileVO afVO = new AttachFileVO();
			
			UUID uuid = UUID.randomUUID();
			
			afVO.setUuid(uuid.toString());
			afVO.setUploadPath(folderName);
			
			String uploadFileName = multi.getOriginalFilename();
			afVO.setFileName(uploadFileName);
			
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			
			File saveFile = new File(uploadPath, uploadFileName);
			try {
				multi.transferTo(saveFile);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			
			list.add(afVO);
		}
		
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
}
