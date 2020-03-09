package com.qBoard.controller;

import java.util.ArrayList;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.qBoard.domain.ReplyCommentVO;
import com.qBoard.service.QBoardService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/replyComment/")
@AllArgsConstructor
public class ReplyRestController {
	
	private QBoardService qBoardService;
	
	@GetMapping(value="/{qNo}/{rNo}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ArrayList<ReplyCommentVO>> get(@PathVariable("qNo") int qno,@PathVariable("rNo") int rno){
		
		return new ResponseEntity<>(qBoardService.getReplyComment(qno, rno), HttpStatus.OK);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, 
					value="/update/{content}/{commentNo}", 
					consumes = "application/json",
					 produces = { MediaType.TEXT_PLAIN_VALUE })
	public @ResponseBody ResponseEntity<String> update(@PathVariable("content") String content, @PathVariable("commentNo") int commentNo){
		
		return qBoardService.updateReplyComment(commentNo, content) == 1? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
