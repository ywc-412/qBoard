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
                                        <div id="lengthChk">
                                        	
                                        </div>/300
									</div>
									<form action="/qBoard/regBoard" method="post" id="registerForm" role="form">
										<!-- 제목하고 내용을 DB에 저장시키기 위한 임시 공간 -->
										
									</form>
								</div>

								<div class="read-content-attachment">
									<h6>
										<label style="cursor: pointer;">
											<i class="fa fa-download mb-2 mr-md-2"></i>
											파일 업로드하기
											<input type="file" name="uploadedFile" style="display: none;" multiple>
										</label>
									</h6>
									
									<div class="row attachment">
										<div class="col-auto">
											<ul class="text-muted uploadResult" id="fileInputAppendHere">
												
											</ul>
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
	<script type="text/javascript" src="/resources/choiFunction/uploadAjax.js"></script>
	<script type="text/javascript" src="/resources/choiFunction/removeEscape.js"></script>
	
</body></html>
