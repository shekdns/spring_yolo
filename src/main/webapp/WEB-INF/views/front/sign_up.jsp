<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!doctype html>
<html lang="en">

<!-- Mirrored from iqonic.design/themes/muzik/html/sign-up.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 17:02:23 GMT -->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Yolo</title>
<!-- Favicon -->
 <!-- <link rel="shortcut icon"
	href="/resources/vendor/bootstrap/images/favicon.ico" />  -->
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
	<!-- loader Start -->
	<!-- <div id="loading">
		<div id="loading-center"></div>
	</div> -->
	<!-- loader END -->
	<!-- Sign in Start -->
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
							<div class="sign-in-from w-100 m-auto pt-5">
								<h1 class="mb-3 text-center">Sign Up</h1>
								<form class="mt-4" role="form" method='post' action="/front/sign_up">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />

									<div class="form-group">
										<label for="exampleInputEmail2">Your ID</label> <input
											type="text" class="form-control mb-0"
											id="id" placeholder="Id" name="id">
										<div class="check_font" id="id_check"></div>
									</div>
									<div class="form-group">
										<label for="exampleInputPassword2">Password</label> <input
											type="password" class="form-control mb-0"
											id="pass" placeholder="Password" name="pass">
											<div class="check_font" id="pw_check"></div>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail2">Your Full Name</label> <input
											type="text" class="form-control mb-0"
											id="name" placeholder="Your Full Name" name="name">
											<div class="check_font" id="name_check"></div>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail3">Email address</label> <input
											type="email" class="form-control mb-0"
											id="email" placeholder="Enter email" name="email">
											<div class="check_font" id="email_check"></div>
									</div>

									<!--  
                              <div class="d-inline-block w-100">
                                 <div class="custom-control custom-checkbox d-inline-block mt-2">
                                    <input type="checkbox" class="custom-control-input" id="customCheck2">
                                    <label class="custom-control-label" for="customCheck2">I accept <a href="#">Terms and Conditions</a></label>
                                 </div>
                              </div>
                              -->
									<div class="sign-info mt-3">
										<button type="submit" class="btn btn-primary mb-2" id="success"
										disabled>Sign Up</button>
									</div>
									<div class="mt-2">
										<div class="d-flex justify-content-center links">
											Already have an account? <a href="sign_in" class="ml-2">Sign
												in</a>
										</div>

									</div>
								
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Sign in END -->
	<!-- color-customizer -->

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
		$("#success").on("click", function(e) {

			e.preventDefault();
			$("form").submit();

		});
	//아이디 정규식
	var idJ = /^[a-z0-9]{4,12}$/;
	// 비밀번호 정규식
	var pwJ = /^[A-Za-z0-9]{4,12}$/; 
	// 이름 정규식
	var nameJ = /^[가-힣]{2,6}$/;
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
		// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
		var id_isFalse = 0;
		var name_isFalse = 0;
		var email_isFalse = 0;
		var pass_isFalse = 0;

	$("#id").blur(function() {
		// id = "id_reg" / name = "userId"
		var user_id = $('#id').val();
		
		if(user_id == ""){
			
			$('#id_check').text('아이디를 입력해주세요 :)');
			$('#id_check').css('color', 'red');
			$("#success").attr("disabled", true);	
			id_isFalse = 0;
		}else{
			
		$.ajax({
			url : '${pageContext.request.contextPath}/front/sign_up/idCheck?id='+user_id,
			//url : '/front/sign_up/idCheck?id='+user_id,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : " + data);							
				console.log("아이디 : " + user_id);	
				console.log("id_false : " + id_isFalse);		
				if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					
					$("#id_check").text("사용중인 아이디입니다 :p");
					$("#id_check").css("color", "red");
					$("#success").attr("disabled", true);
					id_isFalse = 0;		
				} else if(!idJ.test(user_id)){
				   //위의 값이 0 
					$("#id_check").text("아이디는 소문자와 숫자 4~12 자리만 가능 합니다 :p");
					$("#id_check").css("color", "red");
					$("#success").attr("disabled", true);
					id_isFalse = 0;		

				} else {
					$("#id_check").text("사용가능한 아이디입니다 :p");
					$("#id_check").css("color", "blue");
					//$("#success").attr("disabled", false);
					id_isFalse = 1;
					signUp();
				}
				// if(id_isFalse == 1 && name_isFalse == 1 && email_isFalse == 1){
				// 	$("#success").attr("disabled", false);
				// }
				// if(pwJ.test($('#pass').val()) && name_isFalse == 1 && id_isFalse == 1 && email_isFalse == 1){
				// 	$("#success").attr("disabled", false);		
				// }
			}, error : function() {
						console.log("실패");
				}
			});
		}
		

	});
		//이름 유효성
		$("#name").blur(function() {
		// id = "id_reg" / name = "userId"
		
		var name = $('#name').val();
	
		if(name == ""){
			
			$('#name_check').text('이름을 입력해주세요 :)');
			$('#name_check').css('color', 'red');
			$("#success").attr("disabled", true);	
			name_isFalse = 0;
		}else{
		isFalse = 0;
		$.ajax({
			url : '${pageContext.request.contextPath}/front/sign_up/nameCheck?name='+name,
			//url : '/front/sign_up/idCheck?id='+user_id,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : " + data);
				console.log("이름 : " + name);									
				console.log("name_false : " + name_isFalse);
				if (data == 1) {
					// 1 : 이름이 중복되는 문구
					
					$("#name_check").text("사용중인 이름입니다 :p");
					$("#name_check").css("color", "red");
					$("#success").attr("disabled", true);
					name_isFalse = 0;
				}else if(!nameJ.test(name)){
				   //위의 값이 0 
					$("#name_check").text("이름을 확인해주세요 :p");
					$("#name_check").css("color", "red");
					$("#success").attr("disabled", true);
					name_isFalse = 0;		

				} 
				else {
					$("#name_check").text("사용가능한 이름입니다 :p");
					$("#name_check").css("color", "blue");
					//$("#success").attr("disabled", false);
					name_isFalse = 1;
					signUp();
				}
				// if(id_isFalse == 1 && name_isFalse == 1 && email_isFalse == 1){
				// 	$("#success").attr("disabled", false);
				// }	
				// if(pwJ.test($('#pass').val()) && name_isFalse == 1 && id_isFalse == 1 && email_isFalse == 1){
				// 	$("#success").attr("disabled", false);		
				// }
			}, error : function() {
						console.log("실패");
				}
			});
		}
	
	});

	//이메일 유효성
	$("#email").blur(function() {
		// id = "id_reg" / name = "userId"

		var email = $('#email').val();
		
		if(email == ""){
			
			$('#email_check').text('이메일을 입력해주세요 :)');
			$('#email_check').css('color', 'red');
			$("#success").attr("disabled", true);	
			email_isFalse = 0;
		}else{
			
		$.ajax({
			url : '${pageContext.request.contextPath}/front/sign_up/emailCheck?email='+email,
			//url : '/front/sign_up/idCheck?id='+user_id,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : " + data);							
				console.log("이메일 : " + email);
				console.log("email_false : " + email_isFalse);				
				if (data == 1) {
					// 1 : 이메일가 중복되는 문구
					
					$("#email_check").text("사용중인 이메일입니다 :p");
					$("#email_check").css("color", "red");
					$("#success").attr("disabled", true);
					email_isFalse = 0;
				}else if(!mailJ.test(email)){
				   //위의 값이 0 
					$("#email_check").text("유효한 이메일을 입력해주세요 :p");
					$("#email_check").css("color", "red");
					$("#success").attr("disabled", true);
					email_isFalse = 0;		

				}  
				else {
					
					$("#email_check").text("사용가능한 이메일입니다 :p");
					$("#email_check").css("color", "blue");
					//$("#success").attr("disabled", false);
					email_isFalse = 1;
					signUp();
				}
				// if(id_isFalse == 1 && name_isFalse == 1 && email_isFalse == 1){
				// 	$("#success").attr("disabled", false);
				// }	
				// if(pwJ.test($('#pass').val()) && name_isFalse == 1 && id_isFalse == 1 && email_isFalse == 1){
				// 	$("#success").attr("disabled", false);		
				// }
			}, error : function() {
						console.log("실패");
				}
			});
		}
	

	});

	$("#pass").blur(function(){
		var pass = $('#pass').val();
		
		if(pass == ""){
		//	console.log("false : " + pass_isFalse);
			$('#pw_check').text('비밀번호를 입력해주세요 :)');
			$('#pw_check').css('color', 'red');
			$("#success").attr("disabled", true);
		
		}else if(!pwJ.test(pass)){
				$("#pw_check").text("숫자 or 문자로만 4~12 자리 입력 ");
				$("#pw_check").css("color", "red");
				$("#success").attr("disabled", true);

		}else{

				$("#pw_check").text("사용가능한 비밀번호 입니다 :p");
			    $("#pw_check").css("color", "blue");
				signUp();

		}
		
		// else if(id_isFalse == 1 && name_isFalse == 1 && email_isFalse == 1 && pwJ.test(pass)){ 

		// 		$("#pw_check").text("사용가능한 비밀번호 입니다 :p ");
		// 		$("#pw_check").css("color", "blue");
		// 		$("#success").attr("disabled", false);	
		// }
			
	});

	function signUp(){
		var check_id = $('#id_check').html();
		var check_pwd = $('#pw_check').html();
   		var check_name = $('#name_check').html();
   		var check_email = $('#email_check').html();

		if(check_id == '사용가능한 아이디입니다 :p' && check_pwd == '사용가능한 비밀번호 입니다 :p'
		&& check_name == '사용가능한 이름입니다 :p' && check_email == '사용가능한 이메일입니다 :p'){
			$("#success").attr("disabled", false);
		}

	}

	$("#success").on("click", function(e){
		
		e.preventDefault();
		alert("인증 이메일을 보냈으니 확인해주세요!! :p ");
		$("form").submit();
		
	});
	
	
	</script>

	<c:if test="${param.logout != null}">
		<script>
			$(document).ready(function() {
				alert("로그아웃하였습니다.");
			});
		</script>
	</c:if>


</body>

<!-- Mirrored from iqonic.design/themes/muzik/html/sign-up.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 17:02:23 GMT -->
</html>