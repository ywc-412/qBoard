package com.qBoard.controller;

import java.util.ArrayList;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	@GetMapping(value= {"/{qNo}/{rNo}/{amount}/{pageNum}"}, produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ArrayList<ReplyCommentVO>> get(@PathVariable("qNo") int qno,@PathVariable("rNo") int rno, @PathVariable("amount")Integer amount, @PathVariable("pageNum")Integer pageNum){
		
		return new ResponseEntity<>(qBoardService.getReplyComment(qno, rno, amount, pageNum), HttpStatus.OK);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, 
					value="/update/{content}/{commentNo}", 
					consumes = "application/json",
					 produces = { MediaType.TEXT_PLAIN_VALUE })
	public @ResponseBody ResponseEntity<String> update(@PathVariable("content") String content, @PathVariable("commentNo") int commentNo){
		
		return qBoardService.updateReplyComment(commentNo, content) == 1? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, 
			value="/deleteUpdate/{commentNo}", 
			consumes = "application/json",
			 produces = { MediaType.TEXT_PLAIN_VALUE })
	public @ResponseBody ResponseEntity<String> updateDelete(@PathVariable("commentNo") int commentNo){
		
		return qBoardService.updateDelete(commentNo) == 1? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>("faile",HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@PostMapping(value = "/new",
			consumes = "application/json",
			produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> primaryInsert(@RequestBody ReplyCommentVO rcVO){
		rcVO.setReorder(1);
		
		return qBoardService.insertReplyCommentNoInfinite(rcVO) == 1? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@Transactional
	@PostMapping(value="/infinite/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> infiniteInsert(@RequestBody ReplyCommentVO rcVO){
		
		int commentNo = rcVO.getCommentNo();
		int regroupCount = qBoardService.getReplyRegroupCount(rcVO.getRegroup());// 해당 regroup 댓글 count
		
		
		Integer lastReorderForCompare = qBoardService.lastReorderForInsertReplyComment(commentNo);
		
		rcVO.setRegroup(commentNo);
		rcVO.setReorder(lastReorderForCompare + regroupCount);
		
		
		qBoardService.updateReorderAfterInsertReplyComment(rcVO);
		qBoardService.insertReplyCommentInfinite(rcVO);
		return new ResponseEntity<>("success", HttpStatus.OK);
	}
}
