package com.qBoard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qBoard.domain.PageCriteria;
import com.qBoard.domain.QuestionBVO;
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
	
	
	
}
