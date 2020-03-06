package com.qBoard.service;

import java.util.ArrayList;

import com.qBoard.domain.PageCriteria;
import com.qBoard.domain.QuestionBVO;
import com.qBoard.domain.ReplyCommentVO;
import com.qBoard.domain.ReplyVO;

public interface QBoardService {
	public int registerQuestion(QuestionBVO bvo);
	public int totalCountSelect();
	public ArrayList<QuestionBVO> getListWithPaging(PageCriteria pc);
	public QuestionBVO getBoard(Integer qNo);
	public ArrayList<ReplyVO> getReply(Integer qNo);
	public int registerReply(ReplyVO rvo);
	public int updateReplyChk(Integer qno);
	public ArrayList<ReplyCommentVO> getReplyComment(Integer qno, Integer rno);
}
