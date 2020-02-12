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
								<button type="button" class="btn btn-primary pull-right">답변하기</button>
								<div class="media mb-4 mt-5">
									<div class="media-body">
										<span class="pull-right">07:23 AM</span>
										<h5 class="my-1">질문 제목</h5>
									</div>

								</div>

								<div class="read-content-body">
									<p>
										WAS와 웹서버의 차이점이 무엇인가요??
									</p>
									<hr>
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
						</div>
						<!-- /# card -->
						<div class="card">
							<div class="read-content">
								<div class="media mb-4 mt-5">
									<div class="media-body"><span class="pull-right">07:23 AM</span>
										<h5 class="my-1">답변...</h5>
									</div>
								</div>
								<hr>
								<div class="read-content-body">
									<p>ws는 정적인 부분을 처리하는 반면 was는 동적인 부분을 처리합니다.</p>
									<hr>
								</div>
								<div class="form-group mt-md-5">
									<input type="text" class="col-md-11 form-control input-rounded float-left" placeholder="답변에 대해 댓글">
									<button type="submit" class="btn btn-primary">댓글 등록</button>
									<div class="recent-comment m-t-15">
										<div class="media">
											<div class="media-left">
												<a href="#"><img class="media-object mr-3" src="./images/avatar/4.png" alt=""></a>
											</div>
											<div class="media-body">
												<h4 class="media-heading text-primary">최영우</h4>
												<p>아니 그게 아니라.. 다른게 궁금한건데여</p>
												<p class="comment-date">10 min ago</p>
												<i class="fa fa-arrow-right col-md-5">
													<div class="media-body float-right">
														<h4 class="media-heading text-primary">최영우</h4>
														<p>아니 그게 아니라.. 다른게 궁금한건데여dddddddddddddddddddddddddddddddddddddddddddddd</p>
														<p class="comment-date">10 min ago</p>
														
													</div>
												</i>

											</div>

										</div>

										<div class="media">
											<div class="media-left">
												<a href="#"><img class="media-object mr-3" src="./images/avatar/2.png" alt=""></a>
											</div>
											<div class="media-body">
												<h4 class="media-heading text-success">답변자</h4>
												<p>그럼 뭔데여</p>
												<p class="comment-date">1 hour ago</p>
											</div>
										</div>
										<div class="media">
											<div class="media-left">
												<a href="#"><img class="media-object mr-3" src="./images/avatar/3.png" alt=""></a>
											</div>
											<div class="media-body">
												<h4 class="media-heading text-danger">정리자</h4>
												<p>그래요..</p>
												<div class="comment-date">Yesterday</div>
											</div>
										</div>
										<div class="row mt-4 m-4 mx-sm-4">
											<div class="col-7">
												<div class="text-left">1 - 20 of 568</div>
											</div>
											<div class="col-5">
												<div class="btn-group float-right">
													<button class="btn btn-dark" type="button"><i class="fa fa-angle-left"></i>
													</button>
													<button class="btn btn-dark" type="button"><i class="fa fa-angle-right"></i>
													</button>
												</div>
											</div>
										</div>
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
	<!-- jquery vendor -->
	<script src="assets/js/lib/jquery.min.js"></script>
	<script src="assets/js/lib/jquery.nanoscroller.min.js"></script>
	<!-- nano scroller -->
	<script src="assets/js/lib/menubar/sidebar.js"></script>
	<script src="assets/js/lib/preloader/pace.min.js"></script>
	<!-- sidebar -->
	<script src="assets/js/lib/bootstrap.min.js"></script>

	<!-- bootstrap -->

	<script src="assets/js/lib/circle-progress/circle-progress.min.js"></script>
	<script src="assets/js/lib/circle-progress/circle-progress-init.js"></script>

	<script src="assets/js/lib/morris-chart/raphael-min.js"></script>
	<script src="assets/js/lib/morris-chart/morris.js"></script>
	<script src="assets/js/lib/morris-chart/morris-init.js"></script>

	<!--  flot-chart js -->
	<script src="assets/js/lib/flot-chart/jquery.flot.js"></script>
	<script src="assets/js/lib/flot-chart/jquery.flot.resize.js"></script>
	<script src="assets/js/lib/flot-chart/flot-chart-init.js"></script>
	<!-- // flot-chart js -->


	<script src="assets/js/lib/vector-map/jquery.vmap.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/jquery.vmap.min.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/jquery.vmap.sampledata.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.world.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.algeria.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.argentina.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.brazil.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.france.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.germany.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.greece.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.iran.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.iraq.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.russia.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.tunisia.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.europe.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/country/jquery.vmap.usa.js"></script>
	<!-- scripit init-->
	<script src="assets/js/lib/vector-map/vector.init.js"></script>

	<script src="assets/js/lib/weather/jquery.simpleWeather.min.js"></script>
	<script src="assets/js/lib/weather/weather-init.js"></script>
	<script src="assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
	<script src="assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
	<script src="assets/js/scripts.js"></script>
	<!-- scripit init-->

</body></html>
