<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<%@include file="../includes/header.jsp"%>

<script>
	//썸네일 파일명을 가져오는 함수
	function getThumbFileName(fullFilePath) {
		var arrString = fullFilePath.split("/");
		console.log(arrString);
		arrString.splice(-1, 1, "s_" + arrString[arrString.length - 1]);
		return arrString.join("/");
	}
</script>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Song Read</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">

			<div class="panel-heading">Song Read Page</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-6">

						<div class="form-group">
							<label>음악번호</label> <input class="form-control" name='song_idx'
								value='<c:out value="${song.song_idx }"/>' readonly="readonly">
						</div>

						<div class="form-group">
							<label>앨범 번호</label> <input class="form-control" name='album_idx'
								value='<c:out value="${song.album_idx }"/>' readonly="readonly">
						</div>

						<div class="form-group">
							<label>가수 번호</label> <input class="form-control"
								name='artist_idx' value='<c:out value="${song.artist_idx }"/>'
								readonly="readonly">
						</div>

						<div class="form-group">
							<label>작사</label> <input class="form-control" name='lyrics'
								value='<c:out value="${song.lyrics }"/>' readonly="readonly">
						</div>

						<div class="form-group">
							<label>장르</label> <input class="form-control" name='genre'
								value='<c:out value="${song.genre }"/>' readonly="readonly">
						</div>


						<div class="form-group">
							<label>이미지</label> 
							<c:if test="${not empty song.song_img_path}">
							<a
								href="/resources/upload/${song.song_img_path}" target="_blank">
								<img src="/resources/upload/${song.song_img_path}" height='200'
								width='200'>
							</a>
							</c:if>
							<c:if test="${empty song.song_img_path}">
								<a href="/resources/vendor/bootstrap/images/noimage.png"
									target="_blank"> <img
									src="/resources/vendor/bootstrap/images/noimage.png"
									height='200' width='200'></a>
							</c:if>

						</div>


					</div>
					<div class="col-lg-6">
						<div class="form-group">
							<label>곡 이름</label> <input class="form-control" name='song_name'
								value='<c:out value="${song.song_name }"/>' readonly="readonly">
						</div>

						<div class="form-group">
							<label>앨범 이름</label> <input class="form-control"
								name='album_name' value='<c:out value="${song.album_name }"/>'
								readonly="readonly">
						</div>

						<div class="form-group">
							<label>가수 이름</label> <input class="form-control"
								name='artist_name' value='<c:out value="${song.artist_name }"/>'
								readonly="readonly">
						</div>

						<div class="form-group">
							<label>작곡</label> <input class="form-control" name='composition'
								value='<c:out value="${song.composition }"/>'
								readonly="readonly">
						</div>

						<div class="form-group">
							<label>Mp3파일</label> <input class="form-control" name='mp3_path'
								value='<c:out value="${song.mp3_path }"/>' readonly="readonly">
						</div>

						<div class="form-group">
							<label>가사파일</label> <input class="form-control" name='lyc_path'
								value='<c:out value="${song.lyc_path }"/>' readonly="readonly">
						</div>

						<div class="form-group">
							<label>비디오</label> <input class="form-control" name='song_video'
								value='<c:out value="${song.song_video }"/>' readonly="readonly">
						</div>

					</div>

					<!--  end panel-body -->
				</div>
				<button data-oper='song_modify' class="btn btn-default">Modify</button>
				<button data-oper='song' class="btn btn-info">List</button>


				<form id='operForm' action="/boad/modify" method="get">
					<input type='hidden' id='idx' name='idx'
						value='<c:out value="${song.song_idx}"/>'> <input
						type='hidden' name='pageNum'
						value='<c:out value="${cri.pageNum}"/>'> <input
						type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
					<input type='hidden' name='keyword'
						value='<c:out value="${cri.keyword}"/>'> <input
						type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
				</form>
			</div>
		</div>
		<!--  end panel-body -->
	</div>
	<!-- end panel -->
</div>
<!-- /.row -->

<!-- ./ end row -->

<!-- /댓글 modal -->

<script type="text/javascript" src="/resources/js/reply.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		var operForm = $("#operForm");

		$("button[data-oper='song_modify']").on("click", function(e) {

			operForm.attr("action", "/admin/song_modify").submit();

		});

		$("button[data-oper='song']").on("click", function(e) {

			operForm.find("#song_idx").remove();
			operForm.attr("action", "/admin/song")
			operForm.submit();

		});
	});
</script>


<%@include file="../includes/footer.jsp"%>