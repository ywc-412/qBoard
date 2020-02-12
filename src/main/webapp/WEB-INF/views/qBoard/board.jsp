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
								<h4 class="card-title float-left">질문 게시판</h4>
								<button type="button" class="btn btn-secondary pull-right" onclick="location.href='/qBoard/regBoard'">질문 등록하기</button>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover table-responsive-sm">
										<thead>
											<tr>
												<th></th>
												<th>글 제목</th>
												<th>답변 상황</th>
												<th>글 작성시간</th>
												<th>글 작성자</th>
											</tr>
										</thead>
										<tbody>
											<tr onclick="location.href='getBoard.html'">
												<th><i class="fa fa-lock" aria-hidden="true"></i></th>
												<td>이거 어떻게 해요?</td>
												<td><span class="badge badge-primary">답변완료</span>
												</td>
												<td>2020.02.11</td>
												<td class="color-primary">ywc412</td>
											</tr>
											<tr onclick="location.href='getBoard.html'">
												<th><i class="fa fa-unlock" aria-hidden="true"></i></th>
												<td>아니 이거 어떻게 하냐구영... ㅎㅎ</td>
												<td><span class="badge badge-success">답변 대기 중</span>
												</td>
												<td>2020.02.11</td>
												<td class="color-success">ywc412</td>
											</tr>
										</tbody>
									</table>
									<br>
									<div class="fa-pull-right">
									<ul class="pagination pagination-xs pagination-gutter">
                                        <li class="page-item page-indicator">
                                            <a class="page-link" href="javascript:void()">prev</a>
                                        </li>
                                        <li class="page-item active"><a class="page-link" href="javascript:void()">1</a>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="javascript:void()">2</a></li>
                                        <li class="page-item"><a class="page-link" href="javascript:void()">3</a></li>
                                        <li class="page-item"><a class="page-link" href="javascript:void()">4</a></li>
                                        <li class="page-item page-indicator">
                                            <a class="page-link" href="javascript:void()">next</a>
                                        </li>
                                    </ul>
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
