<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <!-- include start -->
	
	<%@include file="include/menubar.jsp" %>

	<!-- include end -->

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
						<div class="col-xxl-6 col-lg-6 col-sm-6 float-right">
							<div class="card text-center" style="width: 50%;">
								<div class="card-body">
									<div class="form-group">
										<label><strong>Email</strong></label>
										<input type="email" class="form-control" value="hello@example.com">
									</div>
									<div class="form-group">
										<label><strong>Password</strong></label>
										<input type="password" class="form-control" value="Password">
									</div>
									<div class="form-check ml-2">
										<input class="form-check-input" type="checkbox" id="basic_checkbox_1">
										<label class="form-check-label" for="basic_checkbox_1">Remember me</label>
									</div>
									<div class="form-group">
										<a href="page-forgot-password.html">Forgot Password?</a>
									</div>
									<div class="text-center">
										<button type="submit" class="btn btn-primary btn-block">Sign me in</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xxl-6 col-lg-6 col-sm-6">
							<div class="card text-center">
								<div class="card-header">
									<h4>안녕하세요 질문을 시원하게 하는 게시판! 입니다.</h4>
									<hr>
									<h5>옆의 메뉴바의 Q & A 게시판을 누르면 해당 게시판으로 이동합니다.</h5>
								</div>
							</div>
						</div>
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
	<script src="resources/assets/js/lib/jquery.min.js"></script>
	<script src="resources/assets/js/lib/jquery.nanoscroller.min.js"></script>
	<!-- nano scroller -->
	<script src="resources/assets/js/lib/menubar/sidebar.js"></script>
	<script src="resources/assets/js/lib/preloader/pace.min.js"></script>
	<!-- sidebar -->
	<script src="resources/assets/js/lib/bootstrap.min.js"></script>


	<!--  flot-chart js -->
	<script src="resources/assets/js/lib/flot-chart/jquery.flot.js"></script>
	<script src="resources/assets/js/lib/flot-chart/jquery.flot.resize.js"></script>
	<script src="resources/assets/js/lib/flot-chart/flot-chart-init.js"></script>
	<!-- // flot-chart js -->

	<script src="resources/assets/js/lib/weather/jquery.simpleWeather.min.js"></script>
	<script src="resources/assets/js/lib/weather/weather-init.js"></script>
	<script src="resources/assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
	<script src="resources/assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
	<script src="resources/assets/js/scripts.js"></script>
	<!-- scripit init-->

</body></html>
