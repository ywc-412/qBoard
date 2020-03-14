package com.qBoard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qBoard.domain.AttachFileVO;
import com.qBoard.domain.PageCriteria;
import com.qBoard.domain.PageDTO;
import com.qBoard.domain.QuestionBVO;
import com.qBoard.domain.ReplyVO;
import com.qBoard.service.QBoardService;

import lombok.Setter;

@Controller
@RequestMapping("/qBoard")
public class QBoardController {
	
	@Setter(onMethod_=@Autowired)
	private QBoardService qBoardService;
	
	@Transactional
	@GetMapping("/board")
	public void board(Model model, @ModelAttribute("pc") PageCriteria pc) {
		int total = qBoardService.totalCountSelect();
		model.addAttribute("list", qBoardService.getListWithPaging(pc));
		model.addAttribute("pageMaker", new PageDTO(total, pc));
	}
	
	@Transactional
	@GetMapping("/getBoard")
	public void getBoard(Model model, Integer qNo) {
		model.addAttribute("board", qBoardService.getBoard(qNo));
		model.addAttribute("reply", qBoardService.getReply(qNo));
		model.addAttribute("attachList", qBoardService.getAttachList(qNo));
	}
	
	@GetMapping("/modBoard")
	public void modBoard() {
		
	}
	
	@GetMapping("/regBoard")
	public void regBoard() {
		
	}
	
	@PostMapping("/regBoard")
	public String registerBoard(QuestionBVO bvo) {
		
		System.out.println(bvo.getAttachList());
		
		qBoardService.registerQuestion(bvo);
		
		return "redirect:/qBoard/board";
	}
	
	@Transactional
	@PostMapping("/regReply")
	public String registerReply(Model model, ReplyVO rvo) {
		qBoardService.registerReply(rvo);
		int qno = rvo.getQno();
		qBoardService.updateReplyChk(qno);
		
		return "redirect:/qBoard/getBoard?qNo="+qno;
	}
	
}
