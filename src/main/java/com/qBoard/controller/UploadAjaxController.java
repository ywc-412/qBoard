package com.qBoard.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(method = RequestMethod.GET, value="/file/download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String fileName){
		Resource resource = new FileSystemResource("c:\\upload\\"+fileName);
		if(resource.exists() == false) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		
		String resourceName = resource.getFilename();
		
		System.out.println(resourceName);
		
		resourceName = resourceName.substring(resourceName.indexOf("_")+1);
		HttpHeaders headers = new HttpHeaders();
		
		try {
			String downloadName = null;
			
			if(userAgent.contains("Trident")) {
				downloadName = URLEncoder.encode(resourceName, "UTF-8").replaceAll("\\+", " ");
			} else if(userAgent.contains("Edge")) {
				// Edge 브라우저일 때
				log.info("Edge browser");
				downloadName = URLEncoder.encode(resourceName, "UTF-8");
				log.info("Edge name : " + downloadName);
			} else {
				// Chrome 브라우저일 때
				log.info("Chrome browser");
				downloadName = new String(resourceName.getBytes("UTF-8"), "ISO-8859-1");
			}
			headers.add("Content-Disposition", "attachment; filename=" + downloadName); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
	}
}
