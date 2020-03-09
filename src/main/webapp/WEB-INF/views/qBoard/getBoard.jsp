<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/menubar.jsp"%>


<div class="content-wrap">

	<div class="main">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8 p-r-0 title-margin-right">
					<div class="page-header"></div>
				</div>
			</div>
			<!-- /# row -->
			<section id="main-content">
				<div class="col-lg-12">
					<div class="card">
						<div class="read-content">
							<button type="button" class="btn btn-primary pull-right"
								id="reply">답변하기</button>
							<div class="media mb-4 mt-5">
								<div class="media-body">
									<span class="pull-right">07:23 AM</span>
									<h4 class="my-1 h4"><c:out value="${board.title}" escapeXml="true"/></h4>
								</div>
							</div>
							<div class="read-content-body">
								<p class="h5"><c:out value="${board.content}" escapeXml="true"/></p>
								<hr>
							</div>
							<div class="read-content-attachment">
								<h6>
									<i class="fa fa-download mb-2"></i> 첨부파일 <span>(3)</span>
								</h6>
								<div class="row attachment">
									<div class="col-auto">
										<a href="javascript:void()" class="text-muted">My-Photo.png</a>
									</div>
									<div class="col-auto">
										<a href="javascript:void()" class="text-muted">My-File.docx</a>
									</div>
									<div class="col-auto">
										<a href="javascript:void()" class="text-muted">My-Resume.pdf</a>
									</div>
								</div>
							</div>
							<hr>
						</div>
					</div>


					<!-- 답변하기 누르면 답변 show 할수 있음  (start)  -->
					<div class="card" id="replyCard">
						<div class="read-content">
							<div class="media mb-4 mt-5">
								<div class="media-body">
									<button class="btn btn-primary float-right" id="replyCancel">답변
										취소</button>
									<h5>답변 제목</h5>
									<br>
									<div class="form-group">
										<input type="text" class="form-control input-default"
											placeholder="답변 제목을 입력해주세요" id="title">
									</div>
									<h5>질문 내용</h5>
									<div class="form-group">
										<textarea id="email-compose-editor"
											class="textarea_editor form-control bg-transparent" rows="30"
											style="height: 100px;" placeholder="답변 내용을 입력해주세요!" wrap="hard"></textarea>
									</div>
								</div>
								<form action="/qBoard/regReply" method="post" id="registerForm">
									<!-- 제목하고 내용을 DB에 저장시키기 위한 임시 공간 -->
								</form>
							</div>

							<div class="read-content-attachment">
								<h6>
									<i class="fa fa-download mb-2"></i> 첨부파일 <span>(3)</span>
								</h6>

								<div class="row attachment">
									<div class="col-auto">
										<a href="javascript:void()" class="text-muted">My-Photo.png</a>
									</div>
									<div class="col-auto">
										<a href="javascript:void()" class="text-muted">My-File.docx</a>
									</div>
									<div class="col-auto">
										<a href="javascript:void()" class="text-muted">My-Resume.pdf</a>
									</div>
								</div>
							</div>
							<hr>
						</div>
						<button type="button" class="btn btn-primary pull-right"
							id="registerReply">답변 등록하기</button>
					</div>
					<!-- /# card -->
					<!-- 답변하기 누르면 답변 show 할수 있음  (end)  -->

					<c:if test="${board.replyChk == 0}">
						<div class="car">
							<div class="read-content">
								<div class="media mb-4 mt-5">
									<div class="media-body text-center">
										<h5 class="my-1">등록된 답변이 없습니다 ㅠㅠ</h5>
									</div>
								</div>
							</div>
						</div>
					</c:if>

					<!-- /# 등록 된 답변이 없습니다... card -->
					<c:if test="${board.replyChk == 1}">
						<c:forEach items="${reply}" var="reply">
							<div class="card">
								<div class="read-content">
									<!-- 답변 있으면.. -->
									
									<div class="media mb-4 mt-5">
										<div class="media-body">
											<span class="pull-right">07:23 AM</span>
											<h4 class="my-1 h4"><c:out value="${reply.title }"/></h4>
										</div>
									</div>
									<div class="read-content-body">
											<c:out value="${reply.content }"/>
										<hr>
									</div>
									
									<div class="form-group mt-md-2 p-2">
										<!-- 댓글 보기 버튼 작성.. -->
										<div class="mb-3" id="ajaxComment">
											<button class="btn btn-sm" id="ajaxCommentBtn" data-rno="${reply.rno}" data-qno="${reply.qno }"><i class="fa fa-comment"> 댓글 보기</i></button>
										</div>
										<div style="font-size: 0.8em;">
											<div id="commentArea${reply.rno}">
												
											</div>
											<div class="recent-comment m-t-15 p-2 pl-3">
												
												<!-- 댓글 foreach 문 돌아아한다... rno를 통하여.. -->
												<!-- 
													if : replyComment의 rno가 해당 rno에 해당 되면 그거 foreach..?
												 -->
												<div id="rno${reply.rno }">
													
												</div>
												<!-- 댓글 end -->
												<div id="replyCommentPaging${reply.rno }">
													
												</div>
											</div>
										</div>
									</div>
									
					
								</div>
							</div>
							<!-- /# card -->
						</c:forEach>
					</c:if>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="footer">
							<p>
								2018 © Admin Board. - <a href="#">example.com</a>
							</p>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp"%>
<script src="/resources/choiFunction/reply.js"></script><!--  -->
<script src="/resources/choiFunction/replyCommentListAjax.js"></script>

<script>
	$(function() {
		
		$('#registerReply').on("click",function(e) {
			e.preventDefault();
				 
			var registerForm = $('#registerForm');
				 
			registerForm.append(
				'<input type="hidden" name="qno" value="'
				+ ${board.qno} + '"><input type="hidden" name="title" value="'
				+ $('#title').val()
				+ '"><input type="hidden" name="content" value="'
				+ $('#email-compose-editor').val() 
				+ '">').submit();
		});
		
		
	});

	
</script>
</body>
</html>
