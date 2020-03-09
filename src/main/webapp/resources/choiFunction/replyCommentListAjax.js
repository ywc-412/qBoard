// 댓글 보기 버튼 이벤트
$('.btn btn-sm, #ajaxCommentBtn').on("click", function(e){
	var qno = $(this).data("qno");
	var rno = $(this).data("rno");
	// ajax 비동기 통신 실행
	showReplyCommentList(qno, rno);
});

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

// 댓글 수정 삭제 이벤트
$(document).on("click", ".updateCancel", function(e){
	var content = $(this).data("updateContent");
	var commentNo = $(this).data("updateCancel");
	
	$('#idForUpdate'+commentNo).html('');
	$('#replyCommentForUpdateSpace'+commentNo).html('<p id="idForUpdate'+commentNo+'">' + content + '</p>');
});

// 댓글 수정 완료 이벤트
$(document).on("click", ".updateReplyComment", function(e){
	var commentNo = $(this).data("updateCommentno");
	var content = $('#updateReplyCommentInput'+commentNo).val();
	// qno와 rno가 필요함.. 
	
	reply.updateReplyComment(content, commentNo, function(e){
		// callback 들어오면 수정 완료..다시 댓글 목록 뿌리기
		$('.btn btn-sm, #ajaxCommentBtn').trigger('click');
		return;
	});
});

//대댓글 달기 이벤트
$(document).on("click", ".infiniteCommentReply, p", function(e){
	var commentNo = $(this).data("infiniteCommentno");
	$('#infiniteReplySpace'+commentNo).html('<div class="input-group mb-3">' + 
												'<input type="text" class="form-control" placeholder="댓글 내용을 입력해주세요" > '+ 
													'<div class="input-group-append">' +
														'<button class="btn btn-outline-secondary" type="button" id="registerComment">댓글 등록</button>' +
														'<button class="btn btn-outline-secondary replyCommentNo" type="button" data-cancel-commentno="'+commentNo+'">취소</button>' + 
													'</div>' +
											'</div>');
	$('.btn btn-outline-secondary replyCommentNo, button').on("click", function(e){
		var cancelCommentNo = $(this).data("cancelCommentno");
		$('#infiniteReplySpace'+cancelCommentNo).html('');
	});
});

var replyCard = $('#replyCard');

replyInit(replyCard);

$('#replyCancel').on("click", function(e) {
	replyCard.hide();
});

$('#reply').on("click", function(e) {
	replyCard.show();
});


function showReplyCommentList(qno, rno){
	$('#commentArea' + rno).html('<div class="input-group mb-3">'+
			'<input type="text" class="form-control" placeholder="댓글 내용을 입력해주세요" aria-label="Recipients username" aria-describedby="button-addon2">' +
			'<div class="input-group-append">' +
				'<button class="btn btn-outline-secondary" type="button" id="registerComment">댓글 등록</button>' + 
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
									'<div style="margin-left : '+item.redepth*20+'px;">' + 
										(item.redepth > 0 ? '<i class="fa fa-arrow-right float-left mr-md-2"></i>': '') +
										'<div class="media-body m1l-md-3">' + 
											'<div class="pull-right">' + 
												'<p id="replyDelete" style="cursor: pointer;">삭제</p>' + 
												'<p class="replyUpdate" data-update-commentno="'+item.commentNo+'" data-update-content="'+item.content+'" style="cursor: pointer;">수정</p>' + 
												'<p class="infiniteCommentReply" data-infinite-commentno="'+item.commentNo+'" style="cursor: pointer;">대댓글 달기</p>' + 
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
	$('#replyCommentPaging'+rno).html('<div class="row mt-4 m-4 mx-sm-4">' +
											'<div class="col-7">'+
											'<div class="text-left">1 - 20 of 568</div>'+
										'</div>'+
										'<div class="col-5">'+
											'<div class="btn-group float-right">'+
												'<button class="btn btn-dark" type="button">'+
													'<i class="fa fa-angle-left"></i>'+
												'</button>'+
												'<button class="btn btn-dark" type="button">'+
													'<i class="fa fa-angle-right"></i>'+
												'</button>'+
											'</div>'+
										'</div>' +
									'</div>');
	$('#commentArea'+rno).show();
}


function replyInit(replyCard) {
	replyCard.hide();
}