<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta name="_csrf_header" content="${_csrf.headerName}">
<meta name="_csrf" content="${_csrf.token}">

<%@include file="../includes/front_header.jsp"%>

	<div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="iq-card">
                        
                        <div class="iq-card-header d-flex justify-content-between">
                           <div class="iq-header-title">
                              <h4 class="card-title">마이리스트</h4>
                           </div>
                        </div>
                          <div class="iq-card-body">
                        	<div class="button_left" style="padding-bottom: 20px;">
								<a href="javascript:void()" class="btn btn-primary "
									id="all_music"
									data-switch="<c:out value="${principal.username}" />">전체 듣기</a> <a
									href="javascript:void(0);" class="btn btn-success "
									id="clear_music">전체 삭제</a>
							</div>
                         	    <div class="table-responsive">
                              <table class="table">
                                 <thead>
                                    <tr>
										<th scope="col" width="100px">번호</th>
										<th scope="col" width="150px">이미지</th>
										<th scope="col" width="200px">곡</th>
										<th scope="col" width="200px">아티스트</th>
										<th scope="col" width="200px">앨범</th>
										<th scope="col" width="150px">듣기</th>
										<th scope="col" width="150px">좋아요</th>
										<th scope="col" width="150px">더보기</th>
									</tr>
                                 </thead>
                                 <tbody>
                                 <c:forEach items="${list}" var="list" varStatus="status">
                                    <tr>
                                       <th scope="row"><c:out value="${status.index + 1}" /></th>
                                       <td><img src="/resources/upload/${list.song.song_img_path }" width="50" height="50" /></td>
                                       <td><c:out value="${list.song.song_name}" /></td>
                                       <td><c:out value="${list.song.artist_name}" /></td>
                                       <td><c:out value="${list.song.album_name}" /></td>
                                       <td><a href="javascript:void()" class="album-poster"
												data-switch="<c:out value="${list.song_idx}" />"> <i
													class="las la-play-circle font-size-32"></i></a></td>
                                       <td>
											
											<c:set var="flag" value="false" />
										<c:forEach items="${s_list}" var="s_list">
											<c:if test="${s_list.id == principal.username && s_list.song_idx == list.song_idx}">
										   		<c:set var="flag" value="true" />
											</c:if>
										</c:forEach>	
										
										<c:choose>
											   <c:when test="${flag}">
											     	<div class='like-wrapper'>									
											<a class='like-button liked' id="song_delete"
											data-song="<c:out value="${list.song_idx}" />"
											data-id="${principal.username}"
											data-album="<c:out value="${list.album_idx}" />"
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
											data-song="<c:out value="${list.song_idx}" />"
											data-id="${principal.username}"
											data-album="<c:out value="${list.album_idx}" />"
											> <span class='like-icon'>
													<div class='heart-animation-1'></div>
													<div class='heart-animation-2'></div>
											</span> Like
											</a>

										</div>
											   </c:otherwise>
											</c:choose>
												
												
												</td>
                                       <td>
												<div
													class="iq-card-header-toolbar iq-music-drop d-flex align-items-center col-2 col-md-1">
													<div class="dropdown">
														<span class="dropdown-toggle text-primary"
															id="dropdownMenuButton2" data-toggle="dropdown"
															aria-expanded="false" role="button"> <i
															class="ri-more-2-fill text-primary"></i>
														</span>
														<div class="dropdown-menu dropdown-menu-right"
															aria-labelledby="dropdownMenuButton2" style="">
															<a class="dropdown-item move2"
																href="<c:out value="${list.song_idx}"/>"><i
																class="ri-eye-fill mr-2"></i>곡 정보</a>

															<!-- <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a> -->
														</div>
													</div>
												</div>


											</td>
                                    </tr>
                                   </c:forEach>
                                 </tbody>
                              </table>
                           </div>
                         
                         </div> 
                     </div>
                  </div>
              </div>
          </div>
       </div>
       <form id='actionForm2' action="/front/myList" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>
			</form>







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


$(".album-poster").on('click', function(e){
var dataSwitchId = $(this).attr('data-switch');
//console.log(dataSwitchId);

$("#player").addClass('showPlayer');


<c:forEach items="${list}" var="list">
if(dataSwitchId == "<c:out value="${list.song_idx}" />"){

/* dataSwitchId = $(this).attr('data-switch');*/
console.log(dataSwitchId); 
ap.list.add([
 {
name: '<c:out value="${list.song.song_name}" />',  //SONG NAME
artist: '<c:out value="${list.song.artist_name}" />', // ARTIST NAME
url: '/resources/upload/<c:out value="${list.song.mp3_path}" />',  //PATH NAME AND SONG URL
cover: '/resources/upload/<c:out value="${list.song.song_img_path}" />',  //IMAGE
lrc: '/resources/upload/<c:out value="${list.song.lyc_path}" />',
theme: '#ebd0c2'
}

]);

	// and now i use aplayer switch function see
ap.list.switch(dataSwitchId); //this is static id but i use dynamic
ap.play();
}
</c:forEach>

// click to slideUp player see
$("#player").addClass('showPlayer');

});

$(".btn-primary").on('click', function(e){
	var data1 = $(this).attr('data-switch');
	console.log(data1);

	$("#player").addClass('showPlayer');



	if(data1 == "<c:out value="${principal.username}" />"){

	/* dataSwitchId = $(this).attr('data-switch');*/
	console.log(data1); 
	<c:forEach items="${list}" var="list">
	ap.list.add([
	 {
		 name: '<c:out value="${list.song.song_name}" />',  //SONG NAME
		 artist: '<c:out value="${list.song.artist_name}" />', // ARTIST NAME
		 url: '/resources/upload/<c:out value="${list.song.mp3_path}" />',  //PATH NAME AND SONG URL
		 cover: '/resources/upload/<c:out value="${list.song.song_img_path}" />',  //IMAGE
		 lrc: '/resources/upload/<c:out value="${list.song.lyc_path}" />',
		 theme: '#ebd0c2'
	}

	]);
	</c:forEach>
		// and now i use aplayer switch function see
	ap.list.switch(data1); //this is static id but i use dynamic
	ap.play();
	}


	// click to slideUp player see
	$("#player").addClass('showPlayer');

});





$("#clear_music").on('click', function(e){
    ap.list.clear();

}) ;


$(document)
.ready(
		function() {
			var result = '<c:out value="${result}"/>';

			
			// replaceState(data, title [, url ]) 히스토리를 수정
			history.replaceState({}, null, null);

		
			var actionForm = $("#actionForm");
			var actionForm2 = $("#actionForm2");

			
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
						actionForm2
								.append("<input type='hidden' name='song_idx' value='"
										+ $(this).attr(
												"href")
										+ "'>");
						actionForm2.attr("action",
								"/front/song_get");
						actionForm2.submit();
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
