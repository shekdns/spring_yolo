<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from iqonic.design/themes/muzik/html/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 17:02:22 GMT -->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Yolo</title>
<!-- Favicon -->
<!-- <link rel="shortcut icon" href="/resources/vendor/bootstrap/images/favicon.ico" />  -->
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

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<!--CDN 링크 -->
</head>
<body>
	<section class="sign-in-page">
		<div class="container">
			<div
				class="row justify-content-center align-items-center height-self-center">
				<div class="col-md-6 col-sm-12 col-12 align-self-center">
					<div class="sign-user_card ">
						<div class="d-flex justify-content-center">
							<div class="sign-user_logo">
								<img src="/resources/vendor/bootstrap/images/login/user4.png"
									class=" img-fluid" alt="Logo">
							</div>
						</div>
						<div class="sign-in-page-data">
							<div class="sign-in-from w-100 pt-5 m-auto">
								<h3 class="mb-3 text-center" style="color:#fff;">아이디/비밀번호 찾기</h3>
								<h5 class="mb-3 text-center" style="color:#fff;">인증된 이메일만 정보 찾기가 가능합니다 :)</h5>

								<form class="mt-4">
									<div style="margin-bottom: 10px;"
										class="custom-control custom-radio custom-control-inline">
										<input type="radio" class="custom-control-input" id="search_1"
											name="search_total" onclick="search_check(1)"
											checked="checked"> <label
											class="custom-control-label font-weight-bold text-white"
											for="search_1">아이디 찾기</label>
									</div>
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" class="custom-control-input" id="search_2"
											name="search_total" onclick="search_check(2)"> 
											<label class="custom-control-label font-weight-bold text-white"
											for="search_2">비밀번호 찾기</label>
											
									</div>
									<div id="searchI">
										<div class="form-group">
											<label class="font-weight-bold text-white" for="inputName_1">이름</label>
											<div>
												<input type="text" class="form-control" id="name"
													name="name" placeholder="name">
											</div>
										</div>
										<div class="form-group">
											<label class="font-weight-bold text-white" for="inputPhone_1">이메일</label>
											<div>
												<input type="text" class="form-control" id="id_email"
													name="email" placeholder="email">
											</div>
										</div>
										<div class="form-group">
											<button id="searchBtn" type="button"
												 class="btn btn-primary btn-block">확인</button>
												<a class="btn btn-danger btn-block" href="/front/sign_in">돌아가기</a>
										</div>
									</div>
									<div id="searchP" style="display: none;">
										<div class="form-group">
											<label class="font-weight-bold text-white" for="inputId">아이디</label>
											<div>
												<input type="text" class="form-control" id="id"
													name="id" placeholder="id">
											</div>
											<div class="check_font" id="id_check"></div>
										</div>
										<div class="form-group">
											<label class="font-weight-bold text-white" for="inputEmail_2">이메일</label>
											<div>
												<input type="email" class="form-control" id="p_email"
													name="email" placeholder="email">
											</div>
											<div class="check_font" id="email_check"></div>
										</div>
										<div class="form-group">
											<button id="searchBtn2" type="button"
												class="btn btn-primary btn-block">확인</button>
											<a class="btn btn-danger btn-block" href="/front/sign_in">돌아가기</a>
										</div>
									</div>

								</form>

							</div>
						</div>
						<div class="mt-2">
							<div class="d-flex justify-content-center links">
								YOLO 
							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- Sign in END -->
			<!-- color-customizer -->
		</div>
	</section>

	<!-- color-customizer END -->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="/resources/vendor/bootstrap/front_js/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/front_js/popper.min.js"></script>
	<script src="/resources/vendor/bootstrap/front_js/bootstrap.min.js"></script>
	<!-- Appear JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/jquery.appear.js"></script>
	<!-- Countdown JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/countdown.min.js"></script>
	<!-- Counterup JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/waypoints.min.js"></script>
	<script
		src="/resources/vendor/bootstrap/front_js/jquery.counterup.min.js"></script>
	<!-- Wow JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/wow.min.js"></script>
	<!-- Apexcharts JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/apexcharts.js"></script>
	<!-- Slick JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/slick.min.js"></script>
	<!-- Select2 JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/select2.min.js"></script>
	<!-- Owl Carousel JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/owl.carousel.min.js"></script>
	<!-- Magnific Popup JavaScript -->
	<script
		src="/resources/vendor/bootstrap/front_js/jquery.magnific-popup.min.js"></script>
	<!-- Smooth Scrollbar JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/smooth-scrollbar.js"></script>
	<!-- lottie JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/lottie.js"></script>
	<!-- am core JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/core.js"></script>
	<!-- am charts JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/charts.js"></script>
	<!-- am animated JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/animated.js"></script>
	<!-- am kelly JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/kelly.js"></script>
	<!-- am maps JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/maps.js"></script>
	<!-- am worldLow JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/worldLow.js"></script>
	<!-- Raphael-min JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/raphael-min.js"></script>
	<!-- Morris JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/morris.js"></script>
	<!-- Morris min JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/morris.min.js"></script>
	<!-- Flatpicker Js -->
	<script src="/resources/vendor/bootstrap/front_js/flatpickr.js"></script>
	<!-- Style Customizer -->
	<script src="/resources/vendor/bootstrap/front_js/style-customizer.js"></script>
	<!-- Chart Custom JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/chart-custom.js"></script>
	<!-- Custom JavaScript -->
	<script src="/resources/vendor/bootstrap/front_js/custom.js"></script>

	<script>
		function search_check(num){
			if(num == '1'){
				document.getElementById("searchP").style.display = "none";
				document.getElementById("searchI").style.display = "";
			}else{
				document.getElementById("searchI").style.display = "none";
				document.getElementById("searchP").style.display = "";
			}


		}

		$("#searchBtn").on("click", function(){	
			var id_name = $("#name").val();
 		    var id_email = $("#id_email").val();
			
			$.ajax({
				url : '${pageContext.request.contextPath}/front/find_user/name_emailCheck?name='+id_name+'&email='+id_email,
				type : "GET",
					success : function(data) {
						var numJson = Number(data);
						console.log("1 = 중복o / 0 = 중복x : " + numJson);									
						if (numJson == 1) {
							// 1 : 이메일가 중복되는 문구
							alert("회원님의 이메일로 새로운 비밀번호가 전송되었습니다.");
							$.ajax({
							url : '${pageContext.request.contextPath}/front/find_user/searchId?name='+id_name+'&email='+id_email,
							type : 'GET'
						  });
						  document.getElementById("name").value = "";
						  document.getElementById("id_email").value = "";
						}else{
							alert("이름과 이메일이 일치하지 않습니다.");
						}
					},
					 error : function() {
						console.log("실패");
				}
			});
			

		});



		$("#searchBtn2").on("click", function(){	
			var p_id = $("#id").val();
 		    var p_email = $("#p_email").val();
			
			$.ajax({
				url : '${pageContext.request.contextPath}/front/find_user/id_emailCheck?id='+p_id+'&email='+p_email,
				type : "GET",
					success : function(data) {
						var numJson = Number(data);
						console.log("1 = 중복o / 0 = 중복x : " + numJson);									
						if (numJson == 1) {
							// 1 : 이메일가 중복되는 문구
							alert("회원님의 이메일로 새로운 비밀번호가 전송되었습니다.");
							$.ajax({
							url : '${pageContext.request.contextPath}/front/find_user/searchPassword?id='+p_id+'&email='+p_email,
							type : 'GET'
						  });
						  document.getElementById("id").value = "";
						  document.getElementById("p_email").value = "";

						}else{
							alert("아이디와 이메일이 일치하지 않습니다.");
						}
					},
					 error : function() {
						console.log("실패");
				}
			});
			

		});

	




	</script>



</body>

<!-- Mirrored from iqonic.design/themes/muzik/html/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 17:02:23 GMT -->
</html>