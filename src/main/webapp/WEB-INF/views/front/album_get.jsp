<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/front_header.jsp"%>

	  <div id="content-page" class="content-page">
         <div class="container-fluid">
               
          <div class="row">
               <div class="col-lg-12">
                  <div class="iq-card">
                     <div class="iq-card-body">
                      <c:forEach items="${album}" var="album">
                       <div class="row">
                        <div class="col-lg-4">
                        
                           <img src="/resources/upload/${album.album_img_path}"  height='200' width='200' 
                           class="img-fluid w-100" alt="" >
                        </div>
                        <div class="col-lg-8">
                           <div class="d-flex align-items-top justify-content-between iq-music-play-detail">
                              <div class="music-detail">
                                 <h3><c:out value="${album.album_name}" /></h3>
                                 <span><c:out value="${album.artist_name}" /></span>
                                 <p class="mb-0">타입 : <c:out value="${album.album_type}" /></p>
                                 <p >장르 : <c:out value="${album.genre}" /></p>
                                 <div class="d-flex align-items-center">                   
                                    <a href="javascript:void()" class="btn btn-primary iq-play mr-2" id="all_music" data-switch="<c:out value="${ablum.album_idx}" />">전체 듣기</a>
                                    <a href="javascript:void(0);" class="btn btn-success iq-play mr-2" id="clear_music">전체 삭제</a>
                                 </div>
                              </div>
                              <div class="music-right">
                                 <div class="d-flex align-items-center">
                                    
                                    <div class="iq-circle mr-2"><a href="javascript:void();"><i class="ri-heart-fill  text-primary"></i></a></div>                 
                                      
                                    </div>
                                 </div>
                              </div>
                              </div>
                           </div>
                           </c:forEach>
                     </div>
                  </div>
               </div>
            </div>
         

         </div>
         <div class="col-lg-12">
            <div class="iq-card">
               <div class="iq-card-body">
                  <ul class="list-unstyled iq-music-slide mb-0">
                    
                    <c:forEach items="${song}" var="song">
                     <li class="mb-3">
                        <div class="d-flex justify-content-between align-items-center row">
                           <div class="media align-items-center col-10 col-md-5">
                              <div class="iq-realese-song ">
                                 <img src="/resources/upload/${song.song_img_path}" class="img-border-radius avatar-60 img-fluid" alt="">
                              </div>
                              <div class="media-body ml-3">
                                 <p class="mb-0"><c:out value="${song.song_name}" /></p>
                                 <small><c:out value="${song.album_name}" /></small>
                              </div>
                           </div>
                           <p class="mb-0 col-md-2 col-md-2 iq-music-time"><c:out value="${song.artist_name}" /></p>
                           <p class="mb-0 col-md-2 col-md-2 iq-musc-icone"><i class="lar la-star font-size-20"></i></p>
                           <p class="mb-0 col-2 col-md-2 iq-music-play">
                            <a href="javascript:void()" class="album-poster" data-switch="<c:out value="${song.song_idx}" />"><i class="las la-play-circle font-size-32"></i></a>
                           </p>
                           <div class="iq-card-header-toolbar iq-music-drop d-flex align-items-center col-2 col-md-1">
                              <div class="dropdown">
                                 <span class="dropdown-toggle text-primary" id="dropdownMenuButton2" data-toggle="dropdown" aria-expanded="false" role="button">
                                    <i class="ri-more-2-fill text-primary"></i>
                                 </span>
                                 <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton2" style="">
                                    <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                              
                                    <!-- <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a> -->
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
      </div>
   </div>
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


$(".album-poster").on('click', function(e){
var dataSwitchId = $(this).attr('data-switch');
//console.log(dataSwitchId);

$("#player").addClass('showPlayer');


<c:forEach items="${song}" var="song">
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
</c:forEach>

// click to slideUp player see
$("#player").addClass('showPlayer');

});

$(".btn-primary").on('click', function(e){
	var data1 = $(this).attr('data-switch');
	console.log(data1);

	$("#player").addClass('showPlayer');


	<c:forEach items="${album}" var="album">
	if(data1 == "<c:out value="${ablum.album_idx}" />"){

	/* dataSwitchId = $(this).attr('data-switch');*/
	console.log(data1); 
	<c:forEach items="${song}" var="song">
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
	</c:forEach>
		// and now i use aplayer switch function see
	ap.list.switch(data1); //this is static id but i use dynamic
	ap.play();
	}
	</c:forEach>

	// click to slideUp player see
	$("#player").addClass('showPlayer');

});





$("#clear_music").on('click', function(e){
    ap.list.clear();

}) ;



</script>

</html>
