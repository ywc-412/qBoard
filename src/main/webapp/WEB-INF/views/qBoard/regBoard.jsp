<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="../include/menubar.jsp" %>


	<div class="content-wrap">
		<div class="main">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-8 p-r-0 title-margin-right">
						<div class="page-header">

						</div>
					</div>
				</div>
				<!-- /# row -->
				<section id="main-content">
					<div class="col-lg-12">
						<div class="card">

							<div class="read-content">
								<div class="media mb-4 mt-5">
									<div class="media-body">
										<h5>질문 제목</h5>
										<div class="form-group">
											<input type="text" class="form-control input-default" placeholder="질문 제목을 입력해주세요!" id="title">
										</div>
										<h5>질문 내용</h5>
										<div class="form-group">
											<textarea id="email-compose-editor" class="textarea_editor form-control bg-transparent" rows="30" style="height: 100px;" placeholder="질문 내용을 입력해주세요!"></textarea>
                                        </div>
									</div>
									<form action="/qBoard/regBoard" method="post" id="registerForm">
										<!-- 제목하고 내용을 DB에 저장시키기 위한 임시 공간 -->
										
									</form>
								</div>

								<div class="read-content-attachment">
									<h6><i class="fa fa-download mb-2"></i> 첨부파일
										<span>(3)</span></h6>
									
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
							<button type="button" class="btn btn-primary pull-right" id="registerQuestion">질문 등록하기</button>
						</div>
						<!-- /# card -->
					</div>

					<div class="row">
						<div class="col-lg-12">
							<div class="footer">
								<p>2018 © Admin Board. - <a href="#">example.com</a></p>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- jquery vendor -->
	<%@ include file="../include/footer.jsp" %>
	
	<script type="text/javascript" src="/resources/choiFunction/removeEscape.js"></script>
	<script>
		$('#registerQuestion').on("click", function(e){
			e.preventDefault();
			
			var title = $('#title').val();
			var textArea = $('#email-compose-editor').val();
			
			// 공백 처리..
			if(!title || !textArea){
				alert('제목 또는 내용을 입력해주세요!');
				return;
			}
			
			var resultTitle = removeBad(title);
			var resultTextArea = removeBad(textArea);
			
			
			var registerForm = $('#registerForm');
			
			registerForm.append('<input type="hidden" name="title" value="<c:out value="'+ resultTitle +'" escapeXml="false"/>"/><input type="hidden" name="content" value="<c:out value="'+ resultTextArea +'" escapeXml="false"/>"/>').submit();
		});
		
	</script>
	
</body></html>
