<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <form id='actionForm' action="/front/index" method='get'>
				
			</form>
    
    <div id="player">
    </div>

    <!-- APlayer Jquery link -->
    
    <!-- color-customizer END -->
   <!-- Optional JavaScript -->
   <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <script src="/resources/vendor/bootstrap/front_js/popper.min.js"></script>
   <script src="/resources/vendor/bootstrap/front_js/jquery.min.js"></script>
   <script src="/resources/vendor/bootstrap/front_js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aplayer/1.10.1/APlayer.min.js">  </script>
   <!-- <script  src="/resources/vendor/bootstrap/front_js/aplayer.js"></script> --> 
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
.
   <!-- Custom JavaScript -->
   <script src="/resources/vendor/bootstrap/front_js/custom.js"></script>
   
   <script>
   $(document)
   .ready(
   		function() {
   			var result = '<c:out value="${result}"/>';

   			// replaceState(data, title [, url ]) 히스토리를 수정
   			history.replaceState({}, null, null);
   			var actionForm = $("#actionForm");
   			
   			$("#move4")
   			.on(
   					"click",
   					function(e) {
   						e.preventDefault();
   						actionForm
   								.append("<input type='hidden' name='id' value='"
   										+ $(this).attr(
   												"href")
   										+ "'>");
   						actionForm.attr("action",
   								"/front/myList");
   						actionForm.submit();
   					});

   			$("#move5")
   			.on(
   					"click",
   					function(e) {
   						e.preventDefault();
   						actionForm
   								.append("<input type='hidden' name='id' value='"
   										+ $(this).attr(
   												"href")
   										+ "'>");
   						actionForm.attr("action",
   								"/front/myPage");
   						actionForm.submit();
   					});



   			// 검색 버튼 클릭 이벤트
			var searchForm = $("#searchForm");
			$("#searchForm button").on(
					"click",
					function(e) {
						if (!searchForm.find("option:selected")
								.val()) {
							alert("검색종류를 선택하세요");
							return false;
						}

						if (!searchForm.find(
								"input[name='keyword']").val()) {
							alert("키워드를 입력하세요");
							return false;
						}

						searchForm.find("input[name='pageNum']")
								.val("1");
						e.preventDefault();
						searchForm.submit();
					});
   			
   			
   		});


   </script>

