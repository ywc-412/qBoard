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
							<div class="card-header">
								<h4 class="card-title float-left">질문 게시판 ${totalCount}</h4>
								<button type="button" class="btn btn-secondary pull-right" onclick="location.href='/qBoard/regBoard'">질문 등록하기</button>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover table-responsive-sm">
										<thead>
											<tr>
												<th></th>
												<th style="width: 50%">글 제목</th>
												<th>답변 상황</th>
												<th>글 작성시간</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${list}" var="list">
												<tr data-qno="${list.qno}" style="cursor: pointer;">
													<th>
														<c:choose>
															<c:when test="${list.privacyChk == 0}">
																<i class="fa fa-unlock" aria-hidden="true"></i>
															</c:when>
															<c:when test="${list.privacyChk == 1}">
																<i class="fa fa-lock" aria-hidden="true"></i>
															</c:when>
														</c:choose>
													</th>
													<td><c:out value="${list.title}" escapeXml="true"/> </td>
													<td>
														<c:choose>
															<c:when test="${list.replyChk == 0}">
																<span class="badge badge-success">
																	답변이 하나도 없어요 ㅠㅠ
																</span>
															</c:when>
															<c:when test="${list.replyChk == 1}">
																<span class="badge badge-primary">
																	답변 완료
																</span>
															</c:when>
														</c:choose>
													</td>
													<td>
														<fmt:formatDate value="${list.writeDate }" pattern="yyyy.MM.dd"/>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<br>
									<div class="fa-pull-right">
										<form method="get" action="/qBoard/board" id="pageActionForm">
											<ul class="pagination pagination-xs pagination-gutter">
												<c:if test="${pageMaker.prev}">
													<li class="page-item page-indicator">
			                                            <a class="page-link" href="1">
															<span aria-hidden="true">&laquo;&laquo;</span>
														</a>
			                                        </li>
			                                        <li class="page-item page-indicator">
			                                            <a class="page-link" href="javascript:void()">
															<span aria-hidden="true">&laquo;</span>
														</a>
			                                        </li>
		                                        </c:if>
		                                        <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="currentPage">
		                                        	<a class="page-link" href="${currentPage}">${currentPage}</a>
		                                        </c:forEach>
		                                        <c:if test="${pageMaker.next}">
			                                        <li class="page-item page-indicator">
			                                            <a class="page-link" href="javascript:void()">
															<span aria-hidden="true">&raquo;</span>
														</a>
			                                        </li>
			                                        <li class="page-item page-indicator">
			                                            <a class="page-link" href="${pageMaker.realEnd}">
															<span aria-hidden="true">&raquo;&raquo;</span>
														</a>
			                                        </li>
		                                        </c:if>
		                                    </ul>
	                                    </form>
                                    </div>
								</div>
							</div>
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
	<%@ include file="../include/footer.jsp" %>
	<script>
		$(function(){
			$('tr').on("click", function(e){
				var qno = $(this).data("qno");
				location.href="/qBoard/getBoard?qNo="+qno;
			});
			
			$('.page-link, a').on("click", function(e){
				e.preventDefault();
				var pageActionForm = $('#pageActionForm');
				pageActionForm.append('<input type="hidden" value="'+$(this).attr('href')+'" name="pageNum">');
				pageActionForm.submit();
			});
		});
		
	</script>
</body></html>
