<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/front_header.jsp"%>

<!-- Page Content  -->
<div id="content-page" class="content-page">
	<div class="container-fluid">
			<%@include file="../includes/main.jsp"%>
	</div>
</div>

<!-- Wrapper END -->
<!-- Footer -->

<%@include file="../includes/front_footer.jsp"%>

<script type="text/javascript">


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
			var actionForm = $("#actionForm");
			
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

