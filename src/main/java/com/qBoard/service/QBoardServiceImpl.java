package com.qBoard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qBoard.domain.AttachFileVO;
import com.qBoard.domain.PageCriteria;
import com.qBoard.domain.QuestionBVO;
import com.qBoard.domain.ReplyCommentVO;
import com.qBoard.domain.ReplyVO;
import com.qBoard.mapper.QBoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class QBoardServiceImpl implements QBoardService{

	@Setter(onMethod_=@Autowired)
	private QBoardMapper qBoardMapper;
	
	@Override
	public int registerQuestion(QuestionBVO bvo) {
		
		int insertOk = qBoardMapper.insertQuestion(bvo);
		
		bvo.getAttachList().forEach(attach ->{
			qBoardMapper.insertAttach(attach);
		});
		
		if(insertOk == 1) {
			return 1;
		}
		
		return 0;
	}

	@Override
	public ArrayList<QuestionBVO> getListWithPaging(PageCriteria pc) {
		return qBoardMapper.getListWithPaging(pc);
	}

	@Override
	public int totalCountSelect() {
		
		return qBoardMapper.totalCountSelect();
	}

	@Override
	public QuestionBVO getBoard(Integer qNo) {
		return qBoardMapper.getBoard(qNo);
	}

	@Override
	public int registerReply(ReplyVO rvo) {
		
		return qBoardMapper.insertReply(rvo);
	}

	@Override
	public ArrayList<ReplyVO> getReply(Integer qNo) {
		return qBoardMapper.getReply(qNo);
	}

	@Override
	public int updateReplyChk(Integer qno) {
		return qBoardMapper.updateReplyChk(qno);
	}

	@Override
	public ArrayList<ReplyCommentVO> getReplyComment(Integer qno, Integer rno, Integer amount, Integer pageNum) {
		return qBoardMapper.getReplyComment(qno, rno, amount, pageNum);
	}
	
	public int updateReplyComment(Integer commentNo, String content) {
		
		return qBoardMapper.updateReplyComment(commentNo, content);
	}

	@Override
	public int getReplyCommentTotalCount(Integer qno, Integer rno) {
		return qBoardMapper.getReplyCommentTotalCount(qno, rno);
	}

	@Override
	public int insertReplyCommentNoInfinite(ReplyCommentVO rcVO) {
		return qBoardMapper.insertReplyCommentNoInfinite(rcVO);
	}

	@Override
	public int updateReorderAfterInsertReplyComment(ReplyCommentVO rcVO) {
		return qBoardMapper.updateReorderAfterInsertReplyComment(rcVO);
	}

	@Override
	public int insertReplyCommentInfinite(ReplyCommentVO rcVO) {
		return qBoardMapper.insertReplyCommentInfinite(rcVO);
	}

	@Override
	public Integer lastReorderForInsertReplyComment(Integer reparent) {
		return qBoardMapper.lastReorderForInsertReplyComment(reparent);
	}

	@Override
	public int getReplyRegroupCount(Integer regroup) {
		return qBoardMapper.getReplyRegroupCount(regroup);
	}

	@Override
	public int updateDelete(Integer commentNo) {
		return qBoardMapper.updateDelete(commentNo);
	}

	
}
