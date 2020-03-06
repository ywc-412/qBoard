package com.qBoard.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.qBoard.domain.PageCriteria;
import com.qBoard.domain.QuestionBVO;
import com.qBoard.domain.ReplyCommentVO;
import com.qBoard.domain.ReplyVO;

public interface QBoardMapper {
	public int insertQuestion(QuestionBVO bvo);
	public ArrayList<QuestionBVO> getListWithPaging(PageCriteria pc);
	public int totalCountSelect();
	public QuestionBVO getBoard(Integer qNo);
	public int insertReply(ReplyVO rvo);
	public ArrayList<ReplyVO> getReply(Integer qNo);
	public int updateReplyChk(Integer qno);
	public ArrayList<ReplyCommentVO> getReplyComment(@Param("qno") Integer qno, @Param("rno") Integer rno);
}
