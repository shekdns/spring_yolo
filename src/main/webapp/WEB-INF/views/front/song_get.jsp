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
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-body">

						<div class="row">
							<div class="col-lg-4">

								 <c:if test="${empty song.song_img_path}">
											<img src="/resources/vendor/bootstrap/images/noimage.png"
											class="img-border-radius img-fluid w-100" alt="">
                                  </c:if>	
								 <c:if test="${not empty song.song_img_path}">
								<img src="/resources/upload/${song.song_img_path}" height='200'
									width='200' class="img-fluid w-100" alt="">
								</c:if>
							</div>
							<div class="col-lg-8">
								<div
									class="d-flex align-items-top justify-content-between iq-music-play-detail">
									<div class="music-detail">
										<h3>
											<c:out value="${song.song_name}" />
										</h3>
										<span><a class='move2'
												href='<c:out value="${song.artist_idx}"/>'> <c:out
													value="${song.artist_name}" /></a></span>
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
									
										<p>
										<c:set var="flag" value="false" />
										<c:forEach items="${list}" var="list">
											<c:if test="${list.id == principal.username && list.song_idx == song.song_idx}">
										   		<c:set var="flag" value="true" />
											</c:if>
										</c:forEach>	
										
										<c:choose>
											   <c:when test="${flag}">
											     	<div class='like-wrapper'>									
											<a class='like-button liked' id="song_delete"
											data-song="<c:out value="${song.song_idx}" />"
											data-id="${principal.username}"
											data-album="<c:out value="${song.album_idx}" />"
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
											data-song="<c:out value="${song.song_idx}" />"
											data-id="${principal.username}"
											data-album="<c:out value="${song.album_idx}" />"
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
               
		         <form id='actionForm' action="/front/song_get" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
					<input type='hidden' name='type'
						value='<c:out value="${ pageMaker.cri.type }"/>'> <input
						type='hidden' name='keyword'
						value='<c:out value="${ pageMaker.cri.keyword }"/>'>
				</form>
				
				<form id='actionForm2' action="/front/song_get" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
					<input type='hidden' name='type'
						value='<c:out value="${ pageMaker.cri.type }"/>'> <input
						type='hidden' name='keyword'
						value='<c:out value="${ pageMaker.cri.keyword }"/>'>
				</form>
               
               
               <div class="col-sm-12">
				<div class="iq-card">
					<div class="iq-card-body">
						<div class='row'>

						  <div class="col-lg-12">
						
						    <!-- /.panel -->
						    <div class="panel panel-default">
						      
						      <div class="panel-heading" style="margin-bottom:50px;">
						        <i class="fa fa-comments fa-fw"></i> Reply
						        <sec:authorize access="isAuthenticated()">
						           <button id='addReplyBtn' class='btn btn-success btn-xs pull-right'>New Reply</button>
						        </sec:authorize>
						      </div>      
						      <p>
						     
						      
						      <!-- /.panel-heading -->
						      <div class="panel-body">        
						      
						         <!-- 댓글 목록 출력 부분 -->
						        <ul class="chat">
						
						        </ul>
						        <!-- ./ end ul -->
						      </div>
						      <!-- /.panel .chat-panel -->
						
						  	 <div class="panel-footer"></div>
							 </div>
						
						      
						  </div>
						  <!-- ./ end row -->
						</div>
						
						
				  
					</div>
					
					
					
					
				</div>
		</div>
               
               				   <!-- 댓글 Modal -->
				   <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				      <div class="modal-dialog">
				         <div class="modal-content" style="margin-top:100px;">
				            <div class="modal-header">
				               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				               <h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
				            </div>
				            <div class="modal-body">
				               <div class="form-group">
				                      <label>Reply</label> 
				                      <input class="form-control" name='reply' value='New Reply!!!!'>
				               </div>      
				               <div class="form-group">
				                  <label>Replyer</label> 
				                  <input class="form-control" name='replyer' value='replyer'>
				               </div>
				               <div class="form-group">
				                  <label>Reply Date</label> 
				                  <input class="form-control" name='replyDate' value='2018-01-01 13:13'>
				               </div>
				            </div>
				            
				            <div class="modal-footer">
				               <button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
				               <button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
				               <button id='modalRegisterBtn' type="button" class="btn btn-success">Register</button>
				               <button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
				            </div>
				         </div>
				         <!-- /.modal-content -->
				      </div>
				        <!-- /.modal-dialog -->
				   </div>
				   <!-- /댓글 modal -->
               

		</div>
	
		
	</div>
</div>


<script type="text/javascript" src="/resources/js/reply3.js"></script>
<%@include file="../includes/front_footer.jsp"%>
<script type="text/javascript">
$(document).ready(function () {
     
   var song_idxValue = '<c:out value="${song.song_idx}"/>';
   var replyUL = $(".chat");
   
   showList(1);
   
   // 댓글 목록을 출력하는 함수
   function showList(page){
      
      // console.log("show list " + page);
       
      replyService.getList({song_idx:song_idxValue, page: page|| 1 }, function(replyCnt, list) {
         
          // console.log("replyCnt: "+ replyCnt );
          // console.log("list: " + list);
          // console.log(list);
          
         if(page == -1){
            pageNum = Math.ceil(replyCnt/10.0);
            showList(pageNum);
            return;
         }
          
         var str="";
        
         if(list == null || list.length == 0){
            replyUL.html("");
            return;
         }
        
         for (var i = 0, len = list.length || 0; i < len; i++) {
            str +="<li class='left clearfix' data-song_reply_idx='"+list[i].song_reply_idx+"'>";
            str +="  <div><div class='header'><strong class='primary-font'>["
               + list[i].song_reply_idx+"] "+list[i].replyer+"</strong>"; 
            str +="    <small class='pull-right text-muted'>"
               + replyService.displayTime(list[i].replyDate)+"</small></div>";
            str +="    <p>"+list[i].reply+"</p></div></li>";
         }
        
         replyUL.html(str);
        
         showReplyPage(replyCnt);

    
      });//end function
        
   }//end showList

   // 댓글 페이징 처리
   var pageNum = 1;
    var replyPageFooter = $(".panel-footer");
    
    function showReplyPage(replyCnt){
      
      var endNum = Math.ceil(pageNum / 10.0) * 10;  
      var startNum = endNum - 9; 
      
      var prev = startNum != 1;
      var next = false;
      
      if(endNum * 10 >= replyCnt){
        endNum = Math.ceil(replyCnt/10.0);
      }
      
      if(endNum * 10 < replyCnt){
        next = true;
      }
      
      var str = "<ul class='pagination pull-right'>";
      
      if(prev){
        str+= "<li class='page-item'><a class='page-link' href='"+(startNum -1)+"'>Previous</a></li>";
      }
      
      for(var i = startNum ; i <= endNum; i++){
        
        var active = pageNum == i? "active":"";
        
        str+= "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
      }
      
      if(next){
        str+= "<li class='page-item'><a class='page-link' href='"+(endNum + 1)+"'>Next</a></li>";
      }
      
      str += "</ul></div>";
      
      console.log(str);
      
      replyPageFooter.html(str);
    }
     
    replyPageFooter.on("click","li a", function(e){
       e.preventDefault();
       console.log("page click");
       
       var targetPageNum = $(this).attr("href");
       
       console.log("targetPageNum: " + targetPageNum);
       
       pageNum = targetPageNum;
       
       showList(pageNum);
     });
    // 댓글 페이징 처리 끝
    
    
   /* 댓글 modal 창 동작 부분*/
   var modal = $(".modal");
    var modalInputReply = modal.find("input[name='reply']");
    var modalInputReplyer = modal.find("input[name='replyer']");
    var modalInputReplyDate = modal.find("input[name='replyDate']");
    var modalModBtn = $("#modalModBtn");
    var modalRemoveBtn = $("#modalRemoveBtn");
    var modalRegisterBtn = $("#modalRegisterBtn");

    // 댓글 인증 부분 추가
   var replyer = null;
    
    <sec:authorize access="isAuthenticated()">
       var replyer = '<sec:authentication property="principal.username"/>';   
   </sec:authorize>
 
   const csrfHeaderName ="${_csrf.headerName}"; 
   const csrfTokenValue="${_csrf.token}";
    
    $("#modalCloseBtn").on("click", function(e){
       modal.modal('hide');
    });
    
    $("#addReplyBtn").on("click", function(e){
      modal.find("input").val("");
      modal.find("input[name='replyer']").val(replyer);
      modalInputReplyDate.closest("div").hide();
      modal.find("button[id !='modalCloseBtn']").hide();
      
      modalRegisterBtn.show();
      $(".modal").modal("show");
    });

    // Ajax Spring Security Header
    $(document).ajaxSend(function(e, xhr, options) { 
      xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
   });
   
    // 댓글 등록
   modalRegisterBtn.on("click",function(e){
      
      var reply = {
         reply: modalInputReply.val(),
            replyer:modalInputReplyer.val(),
            song_idx:song_idxValue
      };
      
      replyService.add(reply, function(result){
        
        alert(result);
        
        modal.find("input").val("");
        modal.modal("hide");
        
        showList(1);
      });
      
    });
    
   //댓글 조회 클릭 이벤트 처리 
    $(".chat").on("click", "li", function(e){
      
      var song_reply_idx = $(this).data("song_reply_idx");
      console.log(song_reply_idx);
      
      replyService.get(song_reply_idx, function(reply){
   
         modalInputReply.val(reply.reply);
         modalInputReplyer.val(reply.replyer);
         modalInputReplyDate.val(replyService.displayTime( reply.replyDate)).attr("readonly","readonly");
         modal.data("song_reply_idx", reply.song_reply_idx);
         
         modal.find("button[id !='modalCloseBtn']").hide();
         modalModBtn.show();
         modalRemoveBtn.show();
         
         $(".modal").modal("show");
      });
   });
   
    // 댓글 수정 이벤트. security 적용 후
   modalModBtn.on("click", function(e){
      
      var originalReplyer = modalInputReplyer.val();
      
      var reply = {
            rno:modal.data("song_reply_idx"), 
            reply: modalInputReply.val(),
            replyer: originalReplyer
            };
     
      if(!replyer){
         alert("로그인후 수정이 가능합니다.");
         modal.modal("hide");
         return;
      }

      console.log("Original Replyer: " + originalReplyer);
      
      if(replyer  != originalReplyer){
         alert("자신이 작성한 댓글만 수정이 가능합니다.");
         modal.modal("hide");
         return;
      }
        
      replyService.update(reply, function(result){
         alert(result);
         modal.modal("hide");
         showList(pageNum);
      });
   });

   // 댓글 삭제 부분. security 적용 후
   modalRemoveBtn.on("click", function (e){
          
      var song_reply_idx = modal.data("song_reply_idx");

      console.log("song_reply_idx: " + song_reply_idx);
      console.log("REPLYER: " + replyer);
           
      if(!replyer){
         alert("로그인후 삭제가 가능합니다.");
         modal.modal("hide");
         return;
      }
           
      var originalReplyer = modalInputReplyer.val();
           
      console.log("Original Replyer: " + originalReplyer);
           
      if(replyer !== originalReplyer){
              
         alert("자신이 작성한 댓글만 삭제가 가능합니다.");
         modal.modal("hide");
         return;
      }
           
      replyService.remove(song_reply_idx, originalReplyer, function(result){
                 
         alert(result);
         modal.modal("hide");
         showList(pageNum);
      });
   });
   
   /* 댓글 modal 창 동작 부분*/
   
});
</script>

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
								.append("<input type='hidden' name='artist_idx' value='"
										+ $(this).attr(
												"href")
										+ "'>");
						actionForm2.attr("action",
								"/front/artist_get");
						actionForm2.submit();
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
