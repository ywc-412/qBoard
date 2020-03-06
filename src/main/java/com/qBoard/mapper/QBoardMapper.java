package com.qBoard.mapper;

import java.util.ArrayList;

import com.qBoard.domain.PageCriteria;
import com.qBoard.domain.QuestionBVO;
import com.qBoard.domain.ReplyVO;

public interface QBoardMapper {
	public int insertQuestion(QuestionBVO bvo);
	public ArrayList<QuestionBVO> getListWithPaging(PageCriteria pc);
	public int totalCountSelect();
	public QuestionBVO getBoard(Integer qNo);
	public int insertReply(ReplyVO rvo);
	public ArrayList<ReplyVO> getReply(Integer qNo);
	public int updateReplyChk(Integer qno);
}
