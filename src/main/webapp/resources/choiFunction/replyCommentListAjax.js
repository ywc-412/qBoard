// 답글 show, hide event Start
var replyCard = $('#replyCard');

replyInit(replyCard);

$('#replyCancel').on("click", function(e) {
	replyCard.hide();
});

$('#reply').on("click", function(e) {
	replyCard.show();
});
//답글 show, hide event End




// 댓글 보기 버튼 이벤트 start
$('.btn btn-sm, #ajaxCommentBtn').on("click", function(e){
	var qno = $(this).data("qno");
	var rno = $(this).data("rno");
	// ajax 비동기 통신 실행
	showReplyCommentList(qno, rno);
});
//댓글 보기 버튼 이벤트 end




//대댓글 수정 이벤트
$(document).on("click", ".replyUpdate, p", function(e){
	var content = $(this).data("updateContent");
	var commentNo = $(this).data("updateCommentno");
	
	$('#idForUpdate'+commentNo).html('<div class="input-group mb-3 col-md-10">' + 
										'<input type="text" id="updateReplyCommentInput'+commentNo+'" class="form-control" value="'+ content +'">' +
										'<div class="input-group-append">' + 
											'<button class="btn btn-outline-primary updateReplyComment" data-update-commentno = "'+commentNo+'" type="button" id="registerComment">수정</button>' + 
											'<button class="btn btn-outline-secondary updateCancel" type="button" data-update-content="'+content+'" data-update-cancel="'+commentNo+'">취소</button>' +
										'</div>'+
									'</div>');
});
//대댓글 수정 이벤트 end




// 댓글 수정 삭제 이벤트 start
$(document).on("click", ".updateCancel", function(e){
	var content = $(this).data("updateContent");
	var commentNo = $(this).data("updateCancel");
	
	$('#idForUpdate'+commentNo).html('');
	$('#replyCommentForUpdateSpace'+commentNo).html('<p id="idForUpdate'+commentNo+'">' + content + '</p>');
});
// 댓글 수정 삭제 이벤트 End




// 댓글 수정 완료 이벤트
$(document).on("click", ".updateReplyComment", function(e){
	var commentNo = $(this).data("updateCommentno");
	var content = $('#updateReplyCommentInput'+commentNo).val();
	
	reply.updateReplyComment(content, commentNo, function(e){
		// 댓글 보기 버튼 트리거 실행
		$('.btn btn-sm, #ajaxCommentBtn').trigger('click');
		return;
	});
});




//대댓글 달기 버튼 클릭 이벤트
$(document).on("click", ".infiniteCommentReply, p", function(e){
	var commentNo = $(this).data("infiniteCommentno");
	var redepth = $(this).data("infiniteRedepth");
	var qno = $(this).data("infiniteQno");
	var rno = $(this).data("infiniteRno");
	var reorder = $(this).data("infiniteReorder");
	var reparent = $(this).data("infiniteReparent");
	var regroup = $(this).data("infiniteRegroup");
	console.log('reparent : ' +reparent+' commentNo : ' + commentNo + ' redepth : ' + redepth + ' qno : ' + qno + ' rno : ' + rno + ' reorder : ' + reorder + ' regroup : ' + regroup);
	
	if(redepth >= 1){
		alert('대댓글에는 대댓글을 달 수 없습니다');
		return;
	}
	
	$('#infiniteReplySpace'+commentNo).html('<div class="input-group mb-3">' + 
												'<input type="text" id="infiniteCommentInput'+commentNo+'" class="form-control" placeholder="댓글 내용을 입력해주세요" > '+ 
													'<div class="input-group-append">' +
														'<button class="btn btn-outline-secondary registerInfiniteComment" type="button" id="registerComment">댓글 등록</button>' +
														'<button class="btn btn-outline-secondary replyCommentNo" type="button" data-cancel-commentno="'+commentNo+'">취소</button>' + 
													'</div>' +
											'</div>');
	$('.btn btn-outline-secondary replyCommentNo, button').on("click", function(e){
		var cancelCommentNo = $(this).data("cancelCommentno");
		$('#infiniteReplySpace'+cancelCommentNo).html('');
	});
	
	$('.registerInfiniteComment').on("click", function(e){
		
		// 대댓글 등록을 위한 parameter
		var paramForInsert = {
			regroup : regroup,
			commentNo : commentNo,
			writer : 'anonymous',
			reparent : reparent,
			reorder : reorder+1,
			redepth : redepth+1,
			qno : qno,
			rno : rno,
			content : $('#infiniteCommentInput'+commentNo).val()
		};
		
		// 대댓글 등록 ajax 비동기 통신 
		reply.addInfiniteReplyComment(paramForInsert, function(e){
			// ajax 댓글 비동기 통신 후 showReplyCommentList 출력
			// 모든 로직 실행하고 댓글 출력
			showReplyCommentList(qno, rno);
		});
		
	});
	
});
// 대댓글 버튼 클릭이벤트




//댓글 등록 이벤트 start
$(document).on("click", ".registerComment", function(e){
	
	var replyNo = $(this).data("registerRno");
	var QuestionNo = $(this).data("registerQno");
	
	var param = {
		qno : QuestionNo,
		rno : replyNo,
		content : $("#registerCommentInput"+replyNo).val(),
		redepth : 0,
		writer : 'anonymous'
	};
	
	reply.addReplyComment(param, function(e){
		showReplyCommentList(QuestionNo, replyNo);
	});
	
});
//댓글 등록 이벤트 end




// 댓글 리스트 출력 함수 start
function showReplyCommentList(qno, rno){
	$('#commentArea' + rno).html('<div class="input-group mb-3">'+
									'<input type="text" class="form-control" placeholder="댓글 내용을 입력해주세요" id="registerCommentInput'+rno+'">' +
									'<div class="input-group-append">' +
										'<button class="btn btn-outline-secondary registerComment" type="button" id="registerComment" data-register-rno="'+rno+'" data-register-qno="'+qno+'">댓글 등록</button>' + 
									'</div>' +
								'</div>');
	reply.getList(qno, rno, function(result){
		$('#rno'+rno).html('');	// 댓글 보기 버튼을 눌렸을 떄 중복 append 되지 않도록 방지..
		$.each(result, function(index, item){
			var realWriter;
			if(!item.writer){
				realWriter = 'anonymous';
			}else{
				realWriter = item.writer;
			}

		$('#rno'+item.rno).append('<div class="media">' + 
									'<div class="media-body" id="">' + 
										'<div style="margin-left : '+item.redepth*40+'px;">' + 
											(item.redepth > 0 ? '<i class="fa fa-arrow-right float-left mr-md-2"></i>': '') +
											'<div class="media-body m1l-md-3">' + 
												'<div class="pull-right">' + 
													'<p id="replyDelete" style="cursor: pointer;">삭제</p>' + 
													'<p class="replyUpdate" data-update-commentno="'+item.commentNo+'" data-update-content="'+item.content+'" style="cursor: pointer;">수정</p>' + 
													'<p class="infiniteCommentReply" data-infinite-regroup="'+item.regroup+'" data-infinite-reparent="'+item.reparent+'" data-infinite-reorder="'+item.reorder+'" data-infinite-redepth="'+item.redepth+'" data-infinite-qno="'+item.qno+'" data-infinite-rno="'+item.rno+'" data-infinite-commentno="'+item.commentNo+'" style="cursor: pointer;">대댓글 달기</p>' + 
												'</div>' + 
												'<h4 class="media-heading text-primary">'+ realWriter +'</h4>'+ 
												'<div id="replyCommentForUpdateSpace'+item.commentNo+'">' + 
													'<p id="idForUpdate'+item.commentNo+'">' + item.content + '</p>' + 
												'</div>' +
												'<p>10 min ago</p>' + 
											'</div>' + 
										'</div>' + 
										'<div id="infiniteReplySpace'+item.commentNo+'">' + 
											
										'</div>' + 
									'</div>' + 
								'</div>'
								);
		});
	});
	
	$('#replyCommentPaging'+rno).html(
										'<button type="button" class="mt-md-4 btn btn-primary w-100"><i class="fa fa-angle-down"></i> 더 보기</button>'
									);
	$('#commentArea'+rno).show();
}
//댓글 리스트 출력 함수 end




// 페이지 로드 시 답글 card hide
function replyInit(replyCard) {
	replyCard.hide();
}


