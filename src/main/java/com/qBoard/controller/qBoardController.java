package com.qBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("qBoard")
public class qBoardController {
	
	@GetMapping("/board")
	public void board() {
		
	}
	
	@GetMapping("/getBoard")
	public void getBoard() {
		
	}
	
	@GetMapping("/modBoard")
	public void modBoard() {
		
	}
	
	@GetMapping("/regBoard")
	public void regBoard() {
		
	}
}
