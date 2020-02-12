<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="include/menubar.jsp" %>
	<div class="content-wrap">
		<div class="container-fluid">
			<br><br>
			<!-- row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="profile">
						<div class="profile-head">
							<div class="photo-content">
								<div class="cover-photo"></div>
								<div class="profile-photo">
									<img src="images/profile/profile.png" class="img-fluid rounded-circle" alt="">
								</div>
							</div>
							<div class="profile-info">
								<div class="row justify-content-center">
									<div class="col-xl-8">
										<div class="row">
											<div class="col-xl-4 col-sm-4 border-right-1 prf-col">
												<div class="profile-name">
													<h4 class="text-primary">Mitchell C. Shay</h4>
													<p>UX / UI Designer</p>
												</div>
											</div>
											<div class="col-xl-4 col-sm-4 border-right-1 prf-col">
												<div class="profile-email">
													<h4 class="text-muted">hello@email.com</h4>
													<p>Email</p>
												</div>
											</div>
											<!-- <div class="col-xl-4 col-sm-4 prf-col">
                                                    <div class="profile-call">
                                                        <h4 class="text-muted">(+1) 321-837-1030</h4>
                                                        <p>Phone No.</p>
                                                    </div>
                                                </div> -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="profile-statistics">
								<div class="text-center mt-4 border-bottom-1 pb-3">
									<div class="row">
										<div class="col">
											<h3 class="m-b-0">150</h3><span>Follower</span>
										</div>
										<div class="col">
											<h3 class="m-b-0">140</h3><span>Place Stay</span>
										</div>
										<div class="col">
											<h3 class="m-b-0">45</h3><span>Reviews</span>
										</div>
									</div>
									<div class="mt-4"><a href="javascript:void()" class="btn btn-primary pl-5 pr-5 mr-3 mb-4">Follow</a> <a href="javascript:void()" class="btn btn-dark pl-5 pr-5 mb-4">Send
											Message</a>
									</div>
								</div>
							</div>

							<div class="profile-news mt-4 pb-3">
								<h5 class="text-primary d-inline">최근 질문 작성</h5>
								<div class="media pt-3 pb-3">
									<div class="media-body">
										<h5 class="m-b-5">게시판 구현하려면 어떻게 해야대여?</h5>
										<p>[답변 대기 중]</p>
									</div>
								</div>
								<div class="media pt-3 pb-3">
									<div class="media-body">
										<h5 class="m-b-5">게시판 구현하려면 어떻게 해야대여?</h5>
										<p>[답변 완료]</p>
									</div>
								</div>
								<div class="media pt-3 pb-3">
									<div class="media-body">
										<h5 class="m-b-5">게시판 구현하려면 어떻게 해야대여?</h5>
										<p>[답변 완료]</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="card">
						<div class="card-body">
							<div class="profile-tab">
								<div class="custom-tab-1">
									<ul class="nav nav-tabs">
										<li class="nav-item"><a href="#my-posts" data-toggle="tab" class="nav-link active show">쪽지함</a></li>
										<li class="nav-item"><a href="#my-posts" data-toggle="tab" class="nav-link">보낸 쪽지</a></li>
									</ul>
									<div class="tab-content">
										<div id="my-posts" class="tab-pane fade active show">
											<div class="my-post-content pt-3">
												<div class="profile-uoloaded-post border-bottom-1 pb-5">
													<div class="col-lg-12">
														<div class="card">
															<div class="card-body">
																<div class="table-responsive">
																	<table class="table header-border table-hover verticle-middle">
																		<thead>
																			<tr>
																				<th><input type="checkbox"></th>
																				<th scope="col" style="width: 20%; text-align: center">보내신 분</th>
																				<th scope="col" style="width: 80%; text-align: center">쪽지 제목</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td><input type="checkbox"></td>
																				<th style="text-align: center;">1</th>
																				<td style="text-align: center;">Air Conditioner</td>
																			</tr>
																			<tr>
																				<td><input type="checkbox"></td>
																				<th style="text-align: center;">2</th>
																				<td style="text-align: center;">Textiles</td>
																			</tr>
																			<tr>
																				<td><input type="checkbox"></td>
																				<th style="text-align: center;">3</th>
																				<td style="text-align: center;">Milk Powder</td>
																			</tr>
																		</tbody>
																	</table>
																	<!-- panel -->
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
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--**********************************
            Content body end
        ***********************************-->
	<div id="search">
		<button type="button" class="close">×</button>
		<form>
			<input type="search" value="" placeholder="type keyword(s) here" />
			<button type="submit" class="btn btn-primary">Search</button>
		</form>
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
