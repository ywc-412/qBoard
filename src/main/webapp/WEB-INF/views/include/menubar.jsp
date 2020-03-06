<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html lang="en">

    <head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>콜라 : 협업을 시원하게!</title>

	<!-- ================= Favicon ================== -->
	<!-- Standard -->
	<link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
	<!-- Retina iPad Touch Icon-->
	<link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
	<!-- Retina iPhone Touch Icon-->
	<link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
	<!-- Standard iPad Touch Icon-->
	<link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
	<!-- Standard iPhone Touch Icon-->
	<link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

	<!-- Styles -->
	<link href="/resources/assets/css/lib/weather-icons.css" rel="stylesheet" />
	<link href="/resources/assets/css/lib/owl.carousel.min.css" rel="stylesheet" />
	<link href="/resources/assets/css/lib/owl.theme.default.min.css" rel="stylesheet" />
	<link href="/resources/assets/css/lib/font-awesome.min.css" rel="stylesheet">
	<link href="/resources/assets/css/lib/themify-icons.css" rel="stylesheet">
	<link href="/resources/assets/css/lib/menubar/sidebar.css" rel="stylesheet">
	<link href="/resources/assets/css/lib/bootstrap.min.css" rel="stylesheet">

	<link href="/resources/assets/css/lib/helper.css" rel="stylesheet">
	<link href="/resources/assets/css/style.css" rel="stylesheet">
	
</head>

<body>

	<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
		<div class="nano">
			<div class="nano-content">
				<div class="logo"><a href="/"><span>콜라 : 질문을 시원하게!</span></a></div>
				<ul>
					<li class="label">Main</li>
					<li><a class="sidebar-sub-toggle" href="/"><i class="ti-home"></i> 메인화면</a></li>
					<li><a href="app-email.html"><i class="ti-email"></i>관리자에게 쪽지 남기기</a></li>
					<li class="label">게시판</li>
					<li><a href="/qBoard/board"><i class="ti-bar-chart-alt"></i>Q & A</a></li>
					<li><a class="sidebar-sub-toggle"><i class="ti-target"></i> log <span class="sidebar-collapse-icon ti-angle-down"></span></a>
						<ul>
							<li><a href="login">로그인</a></li>
							<li><a href="register">회원가입</a></li>
							<li><a href="">비밀번호 찾기</a></li>
						</ul>
					</li>
					<li><a><i class=""></i> 로그아웃</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /# sidebar -->


	<div class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="float-left">
						<div class="hamburger sidebar-toggle">
							<span class="line"></span>
							<span class="line"></span>
							<span class="line"></span>
						</div>
					</div>
					<div class="float-right">
						<ul>

							<li class="header-icon dib"><i class="ti-bell"></i>
								<div class="drop-down">
									<div class="dropdown-content-heading">
										<span class="text-left">Recent Notifications</span>
									</div>
									<div class="dropdown-content-body">
										<ul>
											<li>
												<a href="#">
													<img class="pull-left m-r-10 avatar-img" src="/resources/assets/images/avatar/3.jpg" alt="" />
													<div class="notification-content">
														<small class="notification-timestamp pull-right">02:34 PM</small>
														<div class="notification-heading">Mr. John</div>
														<div class="notification-text">5 members joined today </div>
													</div>
												</a>
											</li>
											<li>
												<a href="#">
													<img class="pull-left m-r-10 avatar-img" src="/resources/assets/images/avatar/3.jpg" alt="" />
													<div class="notification-content">
														<small class="notification-timestamp pull-right">02:34 PM</small>
														<div class="notification-heading">Mariam</div>
														<div class="notification-text">likes a photo of you</div>
													</div>
												</a>
											</li>
											<li>
												<a href="#">
													<img class="pull-left m-r-10 avatar-img" src="/resources/assets/images/avatar/3.jpg" alt="" />
													<div class="notification-content">
														<small class="notification-timestamp pull-right">02:34 PM</small>
														<div class="notification-heading">Tasnim</div>
														<div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
													</div>
												</a>
											</li>
											<li>
												<a href="#">
													<img class="pull-left m-r-10 avatar-img" src="/resources/assets/images/avatar/3.jpg" alt="" />
													<div class="notification-content">
														<small class="notification-timestamp pull-right">02:34 PM</small>
														<div class="notification-heading">Mr. John</div>
														<div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
													</div>
												</a>
											</li>
											<li class="text-center">
												<a href="#" class="more-link">See All</a>
											</li>
										</ul>
									</div>
								</div>
							</li>
							<li class="header-icon dib"><i class="ti-email"></i>
								<div class="drop-down">
									<div class="dropdown-content-heading">
										<span class="text-left">2 New Messages</span>
										<a href="email.html"><i class="ti-pencil-alt pull-right"></i></a>
									</div>
									<div class="dropdown-content-body">
										<ul>
											<li class="notification-unread">
												<a href="#">
													<img class="pull-left m-r-10 avatar-img" src="/resources/assets/images/avatar/1.jpg" alt="" />
													<div class="notification-content">
														<small class="notification-timestamp pull-right">02:34 PM</small>
														<div class="notification-heading">Michael Qin</div>
														<div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
													</div>
												</a>
											</li>
											<li class="notification-unread">
												<a href="#">
													<img class="pull-left m-r-10 avatar-img" src="/resources/assets/images/avatar/2.jpg" alt="" />
													<div class="notification-content">
														<small class="notification-timestamp pull-right">02:34 PM</small>
														<div class="notification-heading">Mr. John</div>
														<div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
													</div>
												</a>
											</li>
											<li>
												<a href="#">
													<img class="pull-left m-r-10 avatar-img" src="/resources/assets/images/avatar/3.jpg" alt="" />
													<div class="notification-content">
														<small class="notification-timestamp pull-right">02:34 PM</small>
														<div class="notification-heading">Michael Qin</div>
														<div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
													</div>
												</a>
											</li>
											<li>
												<a href="#">
													<img class="pull-left m-r-10 avatar-img" src="/resources/assets/images/avatar/2.jpg" alt="" />
													<div class="notification-content">
														<small class="notification-timestamp pull-right">02:34 PM</small>
														<div class="notification-heading">Mr. John</div>
														<div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
													</div>
												</a>
											</li>
											<li class="text-center">
												<a href="#" class="more-link">See All</a>
											</li>
										</ul>
									</div>
								</div>
							</li>
							<li class="header-icon dib"><span class="user-avatar">John <i class="ti-angle-down f-s-10"></i></span>
								<div class="drop-down dropdown-profile">
									<div class="dropdown-content-heading">
										<span class="text-left">Upgrade Now</span>
										<p class="trial-day">30 Days Trail</p>
									</div>
									<div class="dropdown-content-body">
										<ul>
											<li><a href="profile"><i class="ti-user"></i> <span>Profile</span></a></li>

											<li><a href="#"><i class="ti-email"></i> <span>Inbox</span></a></li>
											<li><a href="#"><i class="ti-settings"></i> <span>Setting</span></a></li>

											<li><a href="#"><i class="ti-lock"></i> <span>Lock Screen</span></a></li>
											<li><a href="#"><i class="ti-power-off"></i> <span>Logout</span></a></li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>