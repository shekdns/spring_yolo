<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<meta name="_csrf_header" content="${_csrf.headerName}">
<meta name="_csrf" content="${_csrf.token}">


<%@include file="../includes/front_header.jsp"%>

<div id="content-page" class="content-page">
	<div class="container-fluid">
		<div class="row">
		
		
	<c:if test="${not empty result}">	
		
				<c:forEach items="${result}" var="result">
				</c:forEach>
					<!-- 곡  -->
					<c:if test="${type eq 'W,'}">		
						
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-body">
						<c:forEach items="${result}" var="result">
						<div class="row">
							<div class="col-lg-4">
							
								 <c:if test="${empty result.song.song_img_path}">
											<img src="/resources/vendor/bootstrap/images/noimage.png"
											class="img-border-radius img-fluid w-100" alt="">
                                  </c:if>	
								 <c:if test="${not empty result.song.song_img_path}">
								<img src="/resources/upload/${result.song.song_img_path}" height='200'
									width='200' class="img-fluid w-100" alt="">
								</c:if>
							</div>
							<div class="col-lg-8">
								<div
									class="d-flex align-items-top justify-content-between iq-music-play-detail">
									<div class="music-detail">
										<h3>
											<c:out value="${result.song.song_name}" />
										</h3>
										<span><a class='move2'
												href='<c:out value="${result.artist_idx}"/>'> <c:out
													value="${result.artist_name}" /></a></span>
										

										<p>
											앨범 : <a class='move'
												href='<c:out value="${result.album.album_idx}"/>'> <c:out
													value="${result.album.album_name}" /></a>

										</p>

										<h6>
											작사 :
											<c:out value="${result.song.composition}" />
										</h6>
										<h6>
											작곡 :
											<c:out value="${result.song.lyrics}" />
										</h6>
										<p></p>

										<div class="d-flex align-items-center">
											<a href="javascript:void()"
												class="btn btn-primary iq-play mr-2" id="all_music"
												data-switch="<c:out value="${result.song.song_idx}" />">듣기</a>

										</div>
									
										<p>
										<c:set var="flag" value="false" />
										<c:forEach items="${list}" var="list">
											<c:if test="${list.id == principal.username && list.song_idx == result.song.song_idx}">
										   		<c:set var="flag" value="true" />
											</c:if>
										</c:forEach>	
										
										<c:choose>
											   <c:when test="${flag}">
											     	<div class='like-wrapper'>									
											<a class='like-button liked' id="song_delete"
											data-song="<c:out value="${result.song.song_idx}" />"
											data-id="${principal.username}"
											data-album="<c:out value="${result.song.album_idx}" />"
											> <span class='like-icon'>
													<div class='heart-animation-1'></div>
													<div class='heart-animation-2'></div>
											</span> Like
											</a>

										</div>
											   </c:when>
											   <c:otherwise>
											     	<div class='like-wrapper'>									
											<a class='like-button' id="song_like"
											data-song="<c:out value="${result.song.song_idx}" />"
											data-id="${principal.username}"
											data-album="<c:out value="${result.song.album_idx}" />"
											> <span class='like-icon'>
													<div class='heart-animation-1'></div>
													<div class='heart-animation-2'></div>
											</span> Like
											</a>

										</div>
											   </c:otherwise>
											</c:choose>
									
									
									</div>
												
								</div>
							</div>
						</div>
						</c:forEach>
					
			</div>
		</div>		
	</div>
		
		  <div class="col-lg-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between align-items-center">
                        <div class="iq-header-title">
                           <h4 class="card-title">추천 곡</h4>
                        </div>
                         <div class="d-flex align-items-center">
                           			<b class="mb-0 text-primary"><a href="/front/song">View More <i class="las la-angle-right"></i></a></b>
                      	</div>
                        <div id="feature-album-slick-arrow" class="slick-aerrow-block"></div>
                     </div>
                     <div class="iq-card-body">
                        <ul class="list-unstyled row  feature-album iq-box-hover mb-0">
                           	<c:forEach items="${random}" var="random">
								<li class="col-lg-2 iq-music-box">
									<div class="iq-card mb-0">
										<div class="iq-card-body p-0">
											<div class="iq-thumb">
												<div class="iq-music-overlay"></div>
													
													
										<c:if test="${not empty random.song_img_path}">
											<a class='move3' href='<c:out value="${random.song_idx}"/>'><img
													src="/resources/upload/${random.song_img_path}"
													class="img-border-radius img-fluid w-100" alt=""></a>
                                     	 </c:if>	
                                     	 <c:if test="${empty random.song_img_path}">
											<img
													src="/resources/vendor/bootstrap/images/noimage.png"
													class="img-border-radius img-fluid w-100" alt="">
                                     	 </c:if>	
												

											</div>
											<div class="feature-list text-center">
												<h6 class="font-weight-600 mb-0">
													<a class='move3' href='<c:out value="${random.song_idx}"/>'><c:out
															value="${random.song_name}" /></a>
												</h6>
												<p class="mb-0">
													<c:out value="${random.artist_name}" />
												</p>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
                          
                          
                        </ul>
                     </div>
                  </div>
               </div>
		
						
		</c:if> 
					
		<!-- 앨범 -->
		<c:if test="${type eq 'T,'}">
					
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-body">
						
							<div class="row">
							<c:forEach items="${result}" var="result">
								<div class="col-lg-3">
									<c:if test="${empty result.album.album_img_path}">

										<img src="/resources/vendor/bootstrap/images/noimage.png"
											height='200' width='200' class="img-fluid w-100" alt="">

									</c:if>

									<c:if test="${not empty result.album.album_img_path}">
										<img src="/resources/upload/${result.album.album_img_path}"
											height='200' width='200' class="img-fluid w-100" alt="">
									</c:if>

								</div>
								<div class="col-lg-8">
									<div
										class="d-flex align-items-top justify-content-between iq-music-play-detail">
										<div class="music-detail">
											<h3>
											
											<a class="move"
												href="<c:out value="${result.album.album_idx}"/>">
													<c:out value="${result.album.album_name}" />
														</a>
											
											
											</h3>
											<span><a class="move2"
												href="<c:out value="${result.artist_idx}"/>"><c:out
														value="${result.artist_name}" />
														</a></span>
											<p class="mb-0">
												타입 :
												<c:out value="${result.album.album_type}" />
											</p>
											<p>
												장르 :
												<c:out value="${result.album.genre}" />
											</p>
											<p>
										
											</p>
									
										</div>
										<div class="music-right">
											<div class="d-flex align-items-center">

											

											</div>
										</div>
									</div>
								</div>
								</c:forEach>
							</div>
						
					</div>
				</div>
			</div>		
					
			  <div class="col-lg-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between align-items-center">
                        <div class="iq-header-title">
                           <h4 class="card-title">추천 앨범</h4>
                        </div>
                         <div class="d-flex align-items-center">
                           			<b class="mb-0 text-primary"><a href="/front/album">View More <i class="las la-angle-right"></i></a></b>
                      	</div>
                        <div id="feature-album-slick-arrow" class="slick-aerrow-block"></div>
                     </div>
                     <div class="iq-card-body">
                        <ul class="list-unstyled row  feature-album iq-box-hover mb-0">
                           	<c:forEach items="${ab_random}" var="ab_random">
								<li class="col-lg-2 iq-music-box">
									<div class="iq-card mb-0">
										<div class="iq-card-body p-0">
											<div class="iq-thumb">
												<div class="iq-music-overlay"></div>
													
													
										<c:if test="${not empty ab_random.album_img_path}">
											<a class='move3' href='<c:out value="${ab_random.album_idx}"/>'><img
													src="/resources/upload/${ab_random.album_img_path}"
													class="img-border-radius img-fluid w-100" alt=""></a>
                                     	 </c:if>	
                                     	 <c:if test="${empty ab_random.album_img_path}">
											<img
													src="/resources/vendor/bootstrap/images/noimage.png"
													class="img-border-radius img-fluid w-100" alt="">
                                     	 </c:if>	
												

											</div>
											<div class="feature-list text-center">
												<h6 class="font-weight-600 mb-0">
													<a class='move' href='<c:out value="${ab_random.album_idx}"/>'><c:out
															value="${ab_random.album_name}" /></a>
												</h6>
												<p class="mb-0">
													<c:out value="${ab_random.artist_name}" />
												</p>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
                          
                          
                        </ul>
                     </div>
                  </div>
               </div>
					
	
								
		</c:if> 
									
					<!-- 아티스트  -->
					<c:if test="${type eq 'C,'}">
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-body">

						<div class="row">
						<c:forEach items="${result}" var="result">
							<div class="col-lg-3">
							
								<c:if test="${empty result.artist_img_path}">

									<img src="/resources/vendor/bootstrap/images/noimage.png"
										class="img-border-radius img-fluid w-100" alt="">

								</c:if>

								<c:if test="${not empty result.artist_img_path}">
								<img src="/resources/upload/${result.artist_img_path}"
									height='200' width='200' class="img-fluid w-100" alt="">
									</c:if>
							</div>
							<div class="col-lg-4">
								<div
									class="d-flex align-items-top justify-content-between iq-music-play-detail">
									<div class="music-detail">
									
										<h3>
											<a class="move2"
												href="<c:out value="${result.artist_idx}"/>">
													<c:out value="${result.artist_name}" />
														</a>
										</h3>
										<span><c:out value="${result.artist_type}" /></span>
										<p class="mb-0">
											<c:out value="${result.gender}" />
										</p>
										<p class="mb-0">
											<c:out value="${result.debut}" />
										</p>

									</div>

								</div>
							</div>
						</c:forEach>
						</div>
					</div>
				</div>
			</div>
							
			
			 <div class="col-lg-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between align-items-center">
                        <div class="iq-header-title">
                           <h4 class="card-title">추천 아티스트</h4>
                        </div>
                         <div class="d-flex align-items-center">
                           			<b class="mb-0 text-primary"><a href="/front/artist">View More <i class="las la-angle-right"></i></a></b>
                      	</div>
                        <div id="feature-album-slick-arrow" class="slick-aerrow-block"></div>
                     </div>
                     <div class="iq-card-body">
                        <ul class="list-unstyled row  feature-album iq-box-hover mb-0">
                           	<c:forEach items="${at_random}" var="at_random">
								<li class="col-lg-2 iq-music-box">
									<div class="iq-card mb-0">
										<div class="iq-card-body p-0">
											<div class="iq-thumb">
												<div class="iq-music-overlay"></div>
													
													
										<c:if test="${not empty at_random.artist_img_path}">
											<a class='move2' href='<c:out value="${at_random.artist_idx}"/>'><img
													src="/resources/upload/${at_random.artist_img_path}"
													class="img-border-radius img-fluid w-100" alt=""></a>
                                     	 </c:if>	
                                     	 <c:if test="${empty at_random.artist_img_path}">
											<img
													src="/resources/vendor/bootstrap/images/noimage.png"
													class="img-border-radius img-fluid w-100" alt="">
                                     	 </c:if>	
												

											</div>
											<div class="feature-list text-center">
												<h6 class="font-weight-600 mb-0">
													<a class='move2' href='<c:out value="${at_random.artist_idx}"/>'><c:out
															value="${at_random.artist_name}" /></a>
												</h6>
												<p class="mb-0">
													<c:out value="${at_random.artist_name}" />
												</p>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
                          
                          
                        </ul>
                     </div>
                  </div>
               </div>		
							
							
									
					</c:if>  
				
		
	</c:if>
					<!-- 결과 없슴 -->
			<c:if test="${empty result}">	
					<img src="/resources/vendor/bootstrap/images/notfound.png"
										id="notfound" alt="">
		
			</c:if>
		
		
		</div>
	</div>
</div>
 				<form id='actionForm' action="/front/song_get" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
					<input type='hidden' name='type'
						value='<c:out value="${ pageMaker.cri.type }"/>'> <input
						type='hidden' name='keyword'
						value='<c:out value="${ pageMaker.cri.keyword }"/>'>
				</form>



<%@include file="../includes/front_footer.jsp"%>
</body>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var result = '<c:out value="${result}"/>';

						
						// replaceState(data, title [, url ]) 히스토리를 수정
						history.replaceState({}, null, null);

					
						var actionForm = $("#actionForm");

						// 페이지 번호 클릭 이벤트
						$(".page-item a").on(
								"click",
								function(e) {
									e.preventDefault();
									// console.log('click');
									actionForm.find("input[name='pageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});

						// 상세보기 클릭 이벤트
						
						$(".move")
								.on(
										"click",
										function(e) {
											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='album_idx' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/front/album_get");
											actionForm.submit();
										});
						$(".move2")
						.on(
								"click",
								function(e) {
									e.preventDefault();
									actionForm
											.append("<input type='hidden' name='artist_idx' value='"
													+ $(this).attr(
															"href")
													+ "'>");
									actionForm.attr("action",
											"/front/artist_get");
									actionForm.submit();
								});

						$(".move3")
						.on(
								"click",
								function(e) {
									e.preventDefault();
									actionForm
											.append("<input type='hidden' name='song_idx' value='"
													+ $(this).attr(
															"href")
													+ "'>");
									actionForm.attr("action",
											"/front/song_get");
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

	//뮤직 플레이어

    const ap = new APlayer({
       	container: document.getElementById('player'),
       	mini: false,
       	autoplay: false,
       	theme: '#FADFA3',
       	loop: 'all',
       	order: 'random',
       	preload: 'auto',
       	volume: 0.7,
       	mutex: true,
       	listFolded: true,
       	listMaxHeight: 90,
       	lrcType: 3,
          

       });


$("#all_music").on('click', function(e){
	var dataSwitchId = $(this).attr('data-switch');
	//console.log(dataSwitchId);

   $("#player").addClass('showPlayer');

   ap.list.clear();
	
   <c:forEach items="${result}" var="result">
   if(dataSwitchId == "<c:out value="${result.song.song_idx}" />"){
		
   	/* dataSwitchId = $(this).attr('data-switch');*/
   	console.log(dataSwitchId); 

       ap.list.add([
        {
       name: '<c:out value="${result.song.song_name}" />',  //SONG NAME
       artist: '<c:out value="${result.song.artist_name}" />', // ARTIST NAME
       url: '/resources/upload/<c:out value="${result.song.mp3_path}" />',  //PATH NAME AND SONG URL
       cover: '/resources/upload/<c:out value="${result.song.song_img_path}" />',  //IMAGE
       lrc: '/resources/upload/<c:out value="${result.song.lyc_path}" />',
       theme: '#ebd0c2'
       }

       ]);

     	// and now i use aplayer switch function see
    }
   ap.list.switch(dataSwitchId); //this is static id but i use dynamic
   ap.play();
   
   </c:forEach>
  
   
	// click to slideUp player see
	$("#player").addClass('showPlayer');
 
});

$('#album_like').on('click', function(e){

	$(this).toggleClass('liked');
	
});



$('.like-button').on('click', function(e) {
	
	 
	   var csrfToken = $('input[name="${_csrf.parameterName}"]').val();
	   var csrfToken2 = $('input[name="${_csrf.headerName}"]').val();


	 var dataAlbum = $(this).attr('data-album');
	  var dataSong = $(this).attr('data-song');
	  var dataId = $(this).attr('data-id');
	  console.log(dataId);
	  console.log(dataAlbum);
	  console.log(dataSong);
	  //console.log(csrfToken);
	  //console.log(csrfToken2);
	  $(this).toggleClass('liked');

	  var header = $("meta[name='_csrf_header']").attr('content');
	  var token = $("meta[name='_csrf']").attr('content');
	  console.log(header);
	  console.log(token);

			$.ajax({
					url:'${pageContext.request.contextPath}/front/checkList',
					type : "POST",
					 data: JSON.stringify({ id : dataId, 
	        	 		 song_idx :  dataSong, 
	        	 		 album_idx : dataAlbum
	        	 	   }), 
	        	 	  contentType: 'application/json',
	        	 	  beforeSend: function(xhr){
	        	 	        xhr.setRequestHeader(header, token);
	        	 	    },
				    success : function(data){
				    	 console.log(data);
				    	 if(data == 2){
								alert("좋아요~");
			                 }else{
								alert("좋아요 해제 ㅠㅠ");
			                 }
							
					 },
					  error : function() {
								console.log("실패");
						  }

				});	  	 
			
			   

	  
}); 

//좋아요 해제
$('.like-button liked').on('click', function(e) {
		
	   var csrfToken = $('input[name="${_csrf.parameterName}"]').val();
	   var csrfToken2 = $('input[name="${_csrf.headerName}"]').val();


	 var dataAlbum = $(this).attr('data-album');
	  var dataSong = $(this).attr('data-song');
	  var dataId = $(this).attr('data-id');
	  console.log(dataId);
	  console.log(dataAlbum);
	  console.log(dataSong);
	  //console.log(csrfToken);
	  //console.log(csrfToken2);
	  $(this).toggleClass('liked');

	  var header = $("meta[name='_csrf_header']").attr('content');
	  var token = $("meta[name='_csrf']").attr('content');
	  console.log(header);
	  console.log(token);

	  $.ajax({
			url:'${pageContext.request.contextPath}/front/checkList',
			type : "POST",
			 data: JSON.stringify({ id : dataId, 
	 		 song_idx :  dataSong, 
	 		 album_idx : dataAlbum
	 	   }), 
	 	  contentType: 'application/json',
	 	  beforeSend: function(xhr){
	 	        xhr.setRequestHeader(header, token);
	 	    },
		    success : function(data){
		    	 console.log(data);
				 if(data == 2){
						alert("좋아요~");
              }else{
             	 alert("좋아요 해제 ㅠㅠ");
	             }
					
			 },
			  error : function() {
						console.log("실패");
				  }

		});	  	 

	  
}); 
</script>

</html>
