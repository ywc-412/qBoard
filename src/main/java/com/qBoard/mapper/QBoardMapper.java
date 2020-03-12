package com.qBoard.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qBoard.domain.AttachFileVO;
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
	public ArrayList<ReplyCommentVO> getReplyComment(@Param("qno") Integer qno, @Param("rno") Integer rno, @Param("amount") Integer amount, @Param("pageNum") Integer pageNum);
	public int updateReplyComment(@Param("commentNo") Integer commentNo, @Param("content") String content);
	public int getReplyCommentTotalCount(@Param("qno") Integer qno, @Param("rno") Integer rno);
	public int insertReplyCommentNoInfinite(ReplyCommentVO rcVO);
	public int updateReorderAfterInsertReplyComment(ReplyCommentVO rcVO);
	public int insertReplyCommentInfinite(ReplyCommentVO rcVO);
	public Integer lastReorderForInsertReplyComment(Integer reparent);
	public int getReplyRegroupCount(Integer regroup);
	public int updateDelete(Integer commentNo);
	public List<AttachFileVO> insertAttach(AttachFileVO avo);
}
