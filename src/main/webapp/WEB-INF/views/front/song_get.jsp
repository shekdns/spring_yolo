<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/front_header.jsp"%>

<div id="content-page" class="content-page">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-body">

						<div class="row">
							<div class="col-lg-4">

								<img src="/resources/upload/${song.song_img_path}" height='200'
									width='200' class="img-fluid w-100" alt="">
							</div>
							<div class="col-lg-8">
								<div
									class="d-flex align-items-top justify-content-between iq-music-play-detail">
									<div class="music-detail">
										<h3>
											<c:out value="${song.song_name}" />
										</h3>
										<span><c:out value="${song.artist_name}" /></span>
										<p>
											장르 :
											<c:out value="${song.genre}" />
										</p>

										<p>
											앨범 : <a class='move'
												href='<c:out value="${song.album_idx}"/>'> <c:out
													value="${song.album_name}" /></a>

										</p>

										<h6>
											작사 :
											<c:out value="${song.composition}" />
										</h6>
										<h6>
											작곡 :
											<c:out value="${song.lyrics}" />
										</h6>
										<p></p>

										<div class="d-flex align-items-center">
											<a href="javascript:void()"
												class="btn btn-primary iq-play mr-2" id="all_music"
												data-switch="<c:out value="${song.song_idx}" />">듣기</a>

										</div>
									</div>
									<div class="music-right">
										<div class="d-flex align-items-center">

											<div class="iq-circle mr-2">
												<a href="javascript:void();"><i
													class="ri-heart-fill  text-primary"></i></a>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
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
                           
                          
                          
                        </ul>
                     </div>
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
	</div>
</div>



<%@include file="../includes/front_footer.jsp"%>
</body>
<script>
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


$(".btn-primary").on('click', function(e){
var dataSwitchId = $(this).attr('data-switch');
//console.log(dataSwitchId);

$("#player").addClass('showPlayer');



if(dataSwitchId == "<c:out value="${song.song_idx}" />"){

/* dataSwitchId = $(this).attr('data-switch');*/
console.log(dataSwitchId); 
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

// click to slideUp player see
$("#player").addClass('showPlayer');

});

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

</html>
