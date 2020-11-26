<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/front_header.jsp"%>

<!-- Page Content  -->
<div id="content-page" class="content-page">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="iq-card ">
					<div class="iq-card-header d-flex justify-content-between border-0">
						<div class="iq-header-title">
							<h4 class="card-title">최신 곡</h4>
						</div>
					</div>
					<div class="iq-card-body  iq-realeses-back">
						<div class="row">

							<div class="col-md-6">
								<ul class="list-unstyled iq-song-slide mb-0 realeases-banner">
									<c:forEach items="${main_song}" var="song">
										<li>
											<div
												class="d-flex justify-content-between align-items-center">
												<div class="media align-items-center col-10 col-md-2">
													<div class="iq-realese-song ">
														<a href="/front/song_info"><img
															src="/resources/upload/${song.song_img_path}"
															class="img-border-radius avatar-60 img-fluid" alt=""></a>
													</div>
												</div>
												<p class="mb-0 col-md-3  iq-m-time">
													<c:out value="${song.song_name}" />
												</p>
												<p class="mb-0 col-md-3  iq-m-time">
													<c:out value="${song.artist_name}" />
												</p>
												<p class="mb-0 col-2 col-md-2">
													<a href="javascript:void()" class="album-poster"
														data-switch="<c:out value="${song.song_idx}" />"><i
														class="las la-play-circle font-size-32"></i></a>
												</p>
												<div
													class="iq-card-header-toolbar iq-music-drop d-flex align-items-center col-md-1">

												</div>
											</div>
										</li>
									</c:forEach>
								</ul>

							</div>

							<div class="col-md-6">
								<ul class="list-unstyled iq-song-slide mb-0 realeases-banner">
									<c:forEach items="${main_song2}" var="song">
										<li>
											<div
												class="d-flex justify-content-between align-items-center">
												<div class="media align-items-center col-10 col-md-2">
													<div class="iq-realese-song ">
														<a href="/front/song_info"><img
															src="/resources/upload/${song.song_img_path}"
															class="img-border-radius avatar-60 img-fluid" alt=""></a>
													</div>
												</div>
												<p class="mb-0 col-md-3  iq-m-time">
													<c:out value="${song.song_name}" />
												</p>
												<p class="mb-0 col-md-3  iq-m-time">
													<c:out value="${song.artist_name}" />
												</p>
												<p class="mb-0 col-2 col-md-2">
													<a href="javascript:void()" class="album-poster"
														data-switch="<c:out value="${song.song_idx}" />"><i
														class="las la-play-circle font-size-32"></i></a>
												</p>
												<div
													class="iq-card-header-toolbar iq-music-drop d-flex align-items-center col-md-1">

												</div>
											</div>
										</li>
									</c:forEach>
								</ul>

							</div>

						</div>
					</div>
				</div>
			</div>


			<div class="col-lg-12">
				<div class="iq-card">
					<div
						class="iq-card-header d-flex justify-content-between align-items-center">
						<div class="iq-header-title">
							<h4 class="card-title">특집 앨범</h4>
						</div>
						<div class="d-flex align-items-center">
							<b class="mb-0 text-primary"><a href="/front/album">View
									More <i class="las la-angle-right"></i>
							</a></b>
						</div>
						<div id="feature-album-slick-arrow" class="slick-aerrow-block"></div>
					</div>
					<div class="iq-card-body">
						<ul class="list-unstyled row  feature-album iq-box-hover mb-0">
							<c:forEach items="${main_album}" var="album">
								<li class="col-lg-2 iq-music-box">
									<div class="iq-card mb-0">
										<div class="iq-card-body p-0">
											<div class="iq-thumb">
												<div class="iq-music-overlay"></div>

												<c:if test="${empty album.album_img_path}">

													<img src="/resources/vendor/bootstrap/images/noimage.png"
														class="img-border-radius img-fluid w-100" alt="">
														

												</c:if>
												<c:if test="${not empty album.album_img_path}">
													<a class='move' href='<c:out value="${album.album_idx}"/>'><img
														src="/resources/upload/${album.album_img_path}"
														class="img-border-radius img-fluid w-100" alt=""></a>
												</c:if>
											</div>
											<div class="feature-list text-center">
												<h6 class="font-weight-600 mb-0">
													<a class='move' href='<c:out value="${album.album_idx}"/>'><c:out
															value="${album.album_name}" /></a>
												</h6>
												<p class="mb-0">
													<c:out value="${album.artist_name}" />
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
			<!--  -->
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-header d-flex justify-content-between">
						<div class="iq-header-title">
							<h4 class="card-title">트렌딩 음악</h4>
						</div>
						<div class="d-flex align-items-center">
							<b class="mb-0 text-primary"><a href="/front/song">View
									More <i class="las la-angle-right"></i>
							</a></b>
						</div>
					</div>
					<div class="iq-card-body">
						<ul class="list-unstyled row iq-box-hover mb-0">
							<c:forEach items="${main_song12}" var="song">
								<li class="col-xl-2 col-lg-3 col-md-4 iq-music-box">
									<div class="iq-card">
										<div class="iq-card-body p-0">
											<div class="iq-thumb">
												<div class="iq-music-overlay"></div>

												<c:if test="${empty song.song_img_path}">
													<img src="/resources/vendor/bootstrap/images/noimage.png"
														class="img-border-radius img-fluid w-100" alt="">
												</c:if>
				                              <c:if test="${not empty song.song_img_path}">
												<img src="/resources/upload/${song.song_img_path}"
													class="img-border-radius img-fluid w-100" alt="">
											  </c:if>
											</div>
											<div class="feature-list text-center">
												<h6 class="font-weight-600  mb-0">
													<a class='move3' href='<c:out value="${song.song_idx}"/>'><c:out
															value="${song.song_name}" /></a>
												</h6>
												<p class="mb-0">
													<c:out value="${song.artist_name}" />
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
			<!--  -->
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-header d-flex justify-content-between">
						<div class="iq-header-title">
							<h4 class="card-title">인기 아티스트</h4>
						</div>
						<div class="d-flex align-items-center">
							<b class="mb-0 text-primary"><a href="/front/artist">View
									More <i class="las la-angle-right"></i>
							</a></b>
						</div>
					</div>
					<div class="iq-card-body">
						<ul class="list-unstyled row  iq-box-hover mb-0">
							<c:forEach items="${main_artist}" var="artist">
								<li class="col-xl-2 col-lg-3 col-md-4 iq-music-box">
									<div class="iq-card ">
										<div class="iq-card-body p-0">
											<div class="iq-thumb">
												<div class="iq-music-overlay"></div>
											
													<c:if test="${empty artist.artist_img_path}">
													<img src="/resources/vendor/bootstrap/images/noimage.png"
														class="img-border-radius img-fluid w-100" alt="">
												</c:if>
											
											<c:if test="${not empty artist.artist_img_path}">
												<img src="/resources/upload/${artist.artist_img_path}"
													class="img-border-radius img-fluid w-100" alt="">
												</c:if>

											</div>
											<div class="feature-list text-center">
												<h6 class="font-weight-600  mb-0">
													<a class='move2'
														href='<c:out value="${artist.artist_idx}"/>'><c:out
															value="${artist.artist_name}" /></a>
												</h6>

											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-6 col-md-12">
						<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
							<div
								class="iq-card-header d-flex justify-content-between align-items-center">
								<div class="iq-header-title">
									<h4 class="card-title">차트</h4>
								</div>
								<div class="d-flex align-items-center">
									<b class="mb-0 text-primary"><a href="/front/chart">View
											More <i class="las la-angle-right"></i>
									</a></b>
								</div>
								<div id="hot-song-slick-arrow" class="slick-aerrow-block"></div>
							</div>
							<div class="iq-card-body">
								<ul class="list-unstyled row hot-songs mb-0">
									<c:forEach items="${main_chart}" var="chart">
										<li class="col-lg-12">
											<div class="iq-card iq-card-transparent">
												<div class="iq-card-body p-0">
													<div class="media align-items-center">
														<div class="iq-thumb-hotsong">
															<div class="iq-music-overlay"></div>
															<img src="${chart.img_path}" class="img-fluid avatar-60"
																alt="">
														</div>
														<div class="media-body ml-3">
															<h6 class="mb-0 iq-song-title">
																<c:out value="${chart.name}" />
															</h6>
															<small><c:out value="${chart.artist}" /></small>
														</div>
													</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<!-- 뮤비 -->
					<div class="col-lg-6 col-md-12">
						<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
							<div
								class="iq-card-header d-flex justify-content-between align-items-center">
								<div class="iq-header-title">
									<h4 class="card-title">최신 영상</h4>
								</div>
								<div class="d-flex align-items-center">
									<b class="mb-0 text-primary"><a href="/front/video">View
											More <i class="las la-angle-right"></i>
									</a></b>
								</div>
								<div id="hot-video-slick-arrow" class="slick-aerrow-block"></div>
							</div>
							<div class="iq-card-body">
								<ul class="list-unstyled row iq-box-hover hot-video mb-0">

									<c:forEach items="${main_video}" var="song">
										<li class="col-lg-12">
											<div class="iq-card mb-lg-0">
												<div class="iq-card-body p-0">
													<div class="iq-thumb">

														<iframe width="354" height="199" src="${song.song_video}"
															frameborder="0"
															allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
                                               	gyroscope; picture-in-picture"
															allowfullscreen></iframe>

													</div>
													<div class="feature-list text-center">
														<h6 class="font-weight-600  mb-0">
															<c:out value="${song.song_name}" />
														</h6>
														<p class="mb-0">
															<c:out value="${song.artist_name}" />
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


				</div>
			</div>


			<form id='albumForm' action="/front/index" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>
			</form>

			<form id='songForm' action="/front/index" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>
			</form>

			<form id='artistForm' action="/front/index" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>
			</form>

		</div>
	</div>
</div>

<!-- Wrapper END -->
<!-- Footer -->

<%@include file="../includes/front_footer.jsp"%>

<script type="text/javascript">

/*//NOW I CLICK album-poster to get current song ID*/
	/*	$(".album-poster").on('click', function(e){
			var dataSwitchId = $(this).attr('data-switch');
			//console.log(dataSwitchId);
			
            
/*             $("#player").addClass('showPlayer');
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
            <c:forEach items="${main_song}" var="song">
            if(dataSwitchId == '<c:out value="${song.song_idx}" />'){

                ap.list.add([
                 {
                name: '<c:out value="${song.song_name}" />',  //SONG NAME
                artist: '<c:out value="${song.artist_name}" />', // ARTIST NAME
                url: '/resources/upload/<c:out value="${song.mp3_path}" />',  //PATH NAME AND SONG URL
                cover: '/resources/upload/<c:out value="${song.song_img_path}" />',  //IMAGE
                lrc: '/resources/upload/<c:out value="${song.lyc_path}" />',
                theme: '#ebd0c2'
                }
        
                ]);
              	// and now i use aplayer switch function see
            }
 
            </c:forEach>

            <c:forEach items="${main_song2}" var="song">
            if(dataSwitchId == '<c:out value="${song.song_idx}" />'){

                ap.list.add([
                 {
                name: '<c:out value="${song.song_name}" />',  //SONG NAME
                artist: '<c:out value="${song.artist_name}" />', // ARTIST NAME
                url: '/resources/upload/<c:out value="${song.mp3_path}" />',  //PATH NAME AND SONG URL
                cover: '/resources/upload/<c:out value="${song.song_img_path}" />',  //IMAGE
                lrc: '/resources/upload/<c:out value="${song.lyc_path}" />',
                theme: '#ebd0c2'
                }
        
                ]);
              	// and now i use aplayer switch function see
            }
 
            </c:forEach>

          	ap.list.switch(dataSwitchId); //this is static id but i use dynamic
            ap.play();     
			// click to slideUp player see
			$("#player").addClass('showPlayer');

			            
          
        });

        
        $(".dbutton").on('click', function(e){
            ap.list.remove(0);


        }) ;   */     



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


$(".album-poster").on('click', function(e){
	var dataSwitchId = $(this).attr('data-switch');
	//console.log(dataSwitchId);

    $("#player").addClass('showPlayer');

    <c:forEach items="${main_song}" var="song">
    if(dataSwitchId == "<c:out value="${song.song_idx}" />"){

    	/* dataSwitchId = $(this).attr('data-switch');
    	console.log(dataSwitchId); */
        ap.list.add([
         {
        name: '<c:out value="${song.song_name}" />',  //SONG NAME
        artist: '<c:out value="${song.artist_name}" />', // ARTIST NAME
        url: '/resources/upload/<c:out value="${song.mp3_path}" />',  //PATH NAME AND SONG URL
        cover: '/resources/upload/<c:out value="${song.song_img_path}" />',  //IMAGE
        lrc: '/resources/upload/<c:out value="${song.lyc_path}" />',
        theme: '#ebd0c2'
        }

        ]);
      	// and now i use aplayer switch function see
        ap.list.switch(dataSwitchId); //this is static id but i use dynamic
        ap.play();
     }
    </c:forEach>
    
    <c:forEach items="${main_song2}" var="song">
    if(dataSwitchId == "<c:out value="${song.song_idx}" />"){

        ap.list.add([
         {
        name: '<c:out value="${song.song_name}" />',  //SONG NAME
        artist: '<c:out value="${song.artist_name}" />', // ARTIST NAME
        url: '/resources/upload/<c:out value="${song.mp3_path}" />',  //PATH NAME AND SONG URL
        cover: '/resources/upload/<c:out value="${song.song_img_path}" />',  //IMAGE
        lrc: '/resources/upload/<c:out value="${song.lyc_path}" />',
        theme: '#ebd0c2'
        }

        ]);
        ap.list.switch(dataSwitchId); //this is static id but i use dynamic
        ap.play();
      	// and now i use aplayer switch function see
    }
	
    </c:forEach> 

	// click to slideUp player see
	$("#player").addClass('showPlayer');
  
});




$(".dbutton").on('click', function(e){
    ap.list.remove(0);


}) ;       

$(document)
.ready(
		function() {
			var result = '<c:out value="${result}"/>';

			// replaceState(data, title [, url ]) 히스토리를 수정
			history.replaceState({}, null, null);

			var albumForm = $("#albumForm");
			var songForm = $("#songForm");
			var artistForm = $("#artistForm");
			
			// 상세보기 클릭 이벤트
			
			$(".move")
					.on(
							"click",
							function(e) {
								e.preventDefault();
								albumForm
										.append("<input type='hidden' name='album_idx' value='"
												+ $(this).attr(
														"href")
												+ "'>");
								albumForm.attr("action",
										"/front/album_get");
								albumForm.submit();
							});
			$(".move2")
			.on(
					"click",
					function(e) {
						e.preventDefault();
						artistForm
								.append("<input type='hidden' name='artist_idx' value='"
										+ $(this).attr(
												"href")
										+ "'>");
						artistForm.attr("action",
								"/front/artist_get");
						artistForm.submit();
					});

			$(".move3")
			.on(
					"click",
					function(e) {
						e.preventDefault();
						songForm
								.append("<input type='hidden' name='song_idx' value='"
										+ $(this).attr(
												"href")
										+ "'>");
						songForm.attr("action",
								"/front/song_get");
						songForm.submit();
					});

			
			
			
		});
			




</script>


</body>


</html>

