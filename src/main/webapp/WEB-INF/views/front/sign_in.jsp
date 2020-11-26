<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
   
<!-- Mirrored from iqonic.design/themes/muzik/html/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 17:02:22 GMT -->
<head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Yolo</title>
     <!-- Favicon -->
    <!-- <link rel="shortcut icon" href="/resources/vendor/bootstrap/images/favicon.ico" />  -->
   <!-- Bootstrap CSS -->
   <link href="/resources/vendor/bootstrap/front_css/bootstrap.min.css" rel="stylesheet">
   <!-- Typography CSS -->
   <link rel="stylesheet" href="/resources/vendor/bootstrap/front_css/typography.css">
   <!-- Style CSS -->
   <link rel="stylesheet" href="/resources/vendor/bootstrap/front_css/style.css">
   <!-- Responsive CSS -->
   <link rel="stylesheet" href="/resources/vendor/bootstrap/front_css/responsive.css">
	
   <link rel="stylesheet" href="/resources/vendor/bootstrap/front_css/line-awesome.min.css">
	
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet"> <!--CDN 링크 -->
   </head>
   <body>
      <!-- loader Start -->
      <!-- <div id="loading">
         <div id="loading-center">
         </div>
      </div>  -->
      <!-- loader END -->
      <!-- Sign in Start -->
      <section class="sign-in-page">
         <div class="container">
            <div class="row justify-content-center align-items-center height-self-center">
               <div class="col-md-6 col-sm-12 col-12 align-self-center">
                  <div class="sign-user_card ">
                     <div class="d-flex justify-content-center">
                        <div class="sign-user_logo">
                           <img src="/resources/vendor/bootstrap/images/login/user4.png" class=" img-fluid" alt="Logo">
                        </div>
                     </div>
                     <div class="sign-in-page-data">
                        <div class="sign-in-from w-100 pt-5 m-auto">
                           <h1 class="mb-3 text-center">Sign in</h1>
                           <form class="mt-4" role="form" method="POST" action="/login">
                              <div class="form-group">
                                 <label for="exampleInputEmail2">ID</label>
                                 <input type="text" class="form-control mb-0" id="id" name="username" placeholder="id">
                              </div>
                              <div class="form-group">
                                 <label for="exampleInputPassword2">Password</label>
                                 <input type="password" class="form-control mb-0" id="pass" placeholder="Password" name="password">
                              </div>
                              <div class="sign-info">
                                 <!--<button type="submit" class="btn btn-primary mb-2">Sign in</button>-->
                                    <a href="#" id="login_btn"class="btn btn-primary mb-2">Sign in</a>
                                    
                              </div>

                              <div class="d-inline-block w-100">
                                 <div class="custom-control custom-checkbox d-inline-block mt-2">
                                    <input type="checkbox" class="custom-control-input" id="customCheck2">
                                    <label class="custom-control-label" for="customCheck2">remember me</label>
                                 </div>
                              </div>
                              <input type="hidden" name="${_csrf.parameterName}"
                              value="${_csrf.token}" />
                              
                           </form>
                        </div>
                     </div>
                     <div class="mt-2">
                        <div class="d-flex justify-content-center links">
                           Don't have an account? <a href="sign_up" class="ml-2">Sign Up</a>
                        </div>
                        <div class="d-flex justify-content-center links">
                           <a href="find_user">Forgot your account?</a>
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
   <script src="/resources/vendor/bootstrap/front_js/jquery.counterup.min.js"></script>
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
   <script src="/resources/vendor/bootstrap/front_js/jquery.magnific-popup.min.js"></script>
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

       //포스트 방식
      //    $("#login_btn").on("click", function(e){
            
      //       var p_id = $("#id").val();
            
      //       $.ajax({
      //           url : '${pageContext.request.contextPath}/front/sign_in/authCheck',
      //           type : 'POST',
      //           data : {
      //             id : $("#id").val()
      //           },
      //       dataType : 'JSON',
		// 			success : function(data) {
		// 				console.log("auth 값 : " + data);									
		// 				if (data == "ROLE_USER" || data == "ROLE_ADMIN") {
                     
      //       		//이메일 인증 처리 
      //                e.preventDefault();
      //                 $("form").submit();
		// 				}else{
      //            		    alert("이메일 인증을 하셔야 이용 하실 수 있습니다.!");
      //               		 window.history.back();
		// 				}
		// 			},
		// 			 error : function() {
		// 				 console.log("auth 값 : " + data);	
		// 				console.log("실패");
		// 		}
		// 	});


      
         
      //  });

            //겟 방식 
       $("#login_btn").on("click", function(e){
            
            var p_id = $("#id").val();
			var p_pw = $("#pass").val();
    		
        if(p_id == "" || p_pw == ""){

        	 alert("id 또는 pw를 입력해주세요 !! ");
      		 window.history.back();

        }else{  
	

            $.ajax({
               url : '${pageContext.request.contextPath}/front/sign_in/authCheck?id='+p_id,
               type : 'GET',

            dataType : 'JSON',

					success : function(data) {
						console.log("auth 값 : " + data);									
						if (data == "ROLE_USER" || data == "ROLE_ADMIN") {
                     
            		//이메일 인증 처리 
                     e.preventDefault();
                      $("form").submit();
						}else{
                 		    alert("이메일 인증을 하셔야 이용 하실 수 있습니다.!");
                    		 window.history.back();
						}
					},
					 error : function() {
						console.log("실패");
				}
			});

      	 }
      
         
       });




      </script>
	
   </body>

<!-- Mirrored from iqonic.design/themes/muzik/html/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 17:02:23 GMT -->
</html>