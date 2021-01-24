<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	<sec:authentication var="principal" property="principal" />
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>YOLO</title>

<!-- Bootstrap CSS -->
<link href="/resources/vendor/bootstrap/front_css/bootstrap.min.css"
	rel="stylesheet">
<!-- Typography CSS -->
<link rel="stylesheet"
	href="/resources/vendor/bootstrap/front_css/typography.css">
<!-- Style CSS -->
<link rel="stylesheet"
	href="/resources/vendor/bootstrap/front_css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet"
	href="/resources/vendor/bootstrap/front_css/responsive.css">

<link rel="stylesheet"
	href="/resources/vendor/bootstrap/front_css/line-awesome.min.css">
<!-- 커스텀 css -->	
	<link rel="stylesheet"
	href="/resources/vendor/bootstrap/front_css/front_custom.css">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<!--CDN 링크 -->

<!-- Aplyer CSS -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aplayer/1.10.1/APlayer.min.css"> -->
<link rel="stylesheet"
	href="/resources/vendor/bootstrap/front_css/APlayer.min.css">
<link rel="stylesheet"
	href="/resources/vendor/bootstrap/front_css/aplyer.css">
<link rel="stylesheet"
	href="/resources/vendor/bootstrap/front_css/like_btn.css">

</head>
<body>
	<!-- loader Start -->
	<!--  
   <div id="loading">
      <div id="loading-center">
      </div>
   </div>
   -->
	<!-- loader END -->
	<!-- Wrapper Start -->
	<div class="wrapper">
		<!-- Sidebar  -->
		<div class="iq-sidebar">
			<div class="iq-sidebar-logo d-flex justify-content-between">
				<a href="/front/index" class="header-logo"> <img
					src="/resources/vendor/bootstrap/images/logo2.jpg"
					class="img-fluid rounded-normal" alt="">
					<div class="logo-title">
						<span class="text-primary text-uppercase">YOLO</span>
					</div>
				</a>
				<div class="iq-menu-bt-sidebar">
					<div class="iq-menu-bt align-self-center">
						<div class="wrapper-menu">
							<div class="main-circle">
								<i class="las la-bars"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="sidebar-scrollbar">
				<nav class="iq-sidebar-menu">
					<ul id="iq-sidebar-toggle" class="iq-menu">

						<li><a href="/front/index" class="iq-waves-effect collapsed"><i
								class="las la-home iq-arrow-left"></i><span>홈</span></a></li>
						<li><a href="/front/chart" class="iq-waves-effect collapsed"><i
								class="la la-indent"></i><span>YOLO 차트</span></a></li>
						<li><a href="/front/song" class="iq-waves-effect collapsed"><i
								class="las la-headphones"></i><span>음악</span></a></li>
						<li><a href="/front/album" class="iq-waves-effect collapsed"><i
								class="lar la-file-audio"></i><span>앨범</span></a></li>
							<li><a href="/front/artist" class="iq-waves-effect collapsed"><i
								class="la la-user"></i><span>아티스트</span></a></li>
								<li><a href="/front/video" class="iq-waves-effect collapsed"><i
								class="lab la-elementor iq-arrow-left"></i><span>영상</span></a></li>

					</ul>
				</nav>
			</div>
		</div>
		<!-- TOP Nav Bar -->
		<div class="iq-top-navbar">
			<div class="iq-navbar-custom">
				<nav class="navbar navbar-expand-lg navbar-light p-0">
					<div class="iq-menu-bt d-flex align-items-center">
						<div class="wrapper-menu">
							<div class="main-circle">
								<i class="las la-bars"></i>
							</div>
						</div>
						<div class="iq-navbar-logo d-flex justify-content-between">
							<a href="index.html" class="header-logo">
								<div class="pt-2 pl-2 logo-title">
									<span class="text-primary text-uppercase">YOLO</span>
								</div>
							</a>
						</div>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent"
						aria-label="Toggle navigation">
						<i class="ri-menu-3-line"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
					
						<ul class="navbar-nav ml-auto navbar-list">
							<li class="nav-item nav-icon">
								
						
								
							<div class="iq-search-bar">
									<form id='searchForm' action="/front/search" method='get'>
							<select name='type'>
								<option value=""
									<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
								<option value="T"
									<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>앨범</option>
								<option value="C"
									<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>가수</option>
								<option value="W"
									<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>곡</option>
							</select> 
							
								
								<input type="text" name='keyword' class="search-input"
											placeholder="Search Here.." value='<c:out value="${pageMaker.cri.keyword}"/>' />  
								
								<input
								type='hidden' name='type'
								value='<c:out value="${pageMaker.cri.type}"/>' />
								
								<input
								type='hidden' name='pageNum'
								value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
								type='hidden' name='amount'
								value='<c:out value="1"/>' />
								<button class="btn btn-success mb-1">Search</button>
						</form>
								</div> 
							
							</li>
							

							<li class="line-height pt-3"><a href="#"
								class="search-toggle iq-waves-effect d-flex align-items-center">
									<img src="/resources/vendor/bootstrap/images/login/user4.png"
									class="img-fluid rounded-circle" alt="user">
							</a>
								
								
								<div class="iq-sub-dropdown iq-user-dropdown">
									<div class="iq-card shadow-none m-0">
										<div class="iq-card-body p-0 ">
											<div class="bg-primary p-3">
												<h5 class="mb-0 text-white line-height">
													어서오세요
													${principal.username}
													<!--<sec:authentication property="principal.username" />-->
													<!-- <sec:authentication property="principal.user.auth" /> -->
													님
												</h5>
												<span class="text-white font-size-12">접속중</span>
											</div>
											
			
											<sec:authorize access="hasRole('ROLE_USER')">

											<a href='<c:out value="${principal.username}"/>'
												class="iq-sub-card iq-bg-primary-hover" id="move4">
												<div class="media align-items-center">
													<div class="rounded iq-card-icon iq-bg-primary">
														<i class="ri-account-box-line"></i>
													</div>
													<div class="media-body ml-3">
														<h6 class="mb-0 ">MyList</h6>

													</div>
												</div>
											</a>
											
											<a href='<c:out value="${principal.username}"/>'
												class="iq-sub-card iq-bg-primary-hover" id="move5">
												<div class="media align-items-center">
													<div class="rounded iq-card-icon iq-bg-primary">
														<i class="ri-profile-line"></i>
													</div>
													<div class="media-body ml-3">
                                   					 <h6 class="mb-0 ">MyPage</h6>
                                   
                                					 </div>
												</div>
											</a>
										</sec:authorize>
											
										
											<sec:authorize access="hasRole('ROLE_ADMIN')">
											<a href="/admin/chart"
												class="iq-sub-card iq-bg-primary-hover">
												<div class="media align-items-center">
													<div class="rounded iq-card-icon iq-bg-primary">
														<i class="ri-account-box-line"></i>
													</div>
													<div class="media-body ml-3">
														<h6 class="mb-0 ">AdminPage</h6>

													</div>
												</div>
											</a>
											</sec:authorize>
										
									
											<div class="d-inline-block w-100 text-center p-3">
												<a class="bg-primary iq-sign-btn" href="/logout"
													role="button">Sign out<i class="ri-login-box-line ml-2"></i></a>
											</div>

										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!-- TOP Nav Bar END -->