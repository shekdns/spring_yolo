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
		<h1 class="page-header">album Read</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">

			<div class="panel-heading">Album Read Page</div>
			<!-- /.panel-heading -->
			<div class="panel-body">

				<div class="form-group">
					<label>album_idx</label> <input class="form-control" name='album_idx'
						value='<c:out value="${album.album_idx }"/>' readonly="readonly">
				</div>

				<div class="form-group">
					<label>album_name</label> <input class="form-control" name='album_name'
						value='<c:out value="${album.album_name}"/>' readonly="readonly">
				</div>

				<div class="form-group">
					<label>artist_idx</label> <input class="form-control" name='artist_idx'
						value='<c:out value="${album.artist_idx }"/>' readonly="readonly">
				</div>

				<div class="form-group">
					<label>artist_name</label> <input class="form-control" name='artist_name'
						value='<c:out value="${album.artist_name }"/>' readonly="readonly">
				</div>

				<div class="form-group">
					<label>gender</label> <input class="form-control" name='genre'
						value='<c:out value="${album.genre }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>type</label> <input class="form-control" name='album_type'
						value='<c:out value="${album.album_type }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>regdate</label> <input class="form-control" name='regdate'
						value='<c:out value="${album.regdate }"/>' readonly="readonly">
				</div>

				<div class="form-group">
				
					<label>image</label> 
					
					<c:if test="${not empty album.album_img_path}">
					<a href="/resources/upload/${album.album_img_path}"
						target="_blank"> <img
						src="/resources/upload/${album.album_img_path}" height='200'
						width='200'></a>
					</c:if>
					
					<c:if test="${empty album.album_img_path}">
							<a href="/resources/vendor/bootstrap/images/noimage.png" target="_blank">
							<img src="/resources/vendor/bootstrap/images/noimage.png" height='200' width='200'></a>
					</c:if>
				
				
				</div>

			

				<button data-oper='album_modify' class="btn btn-default">Modify</button>

				<button data-oper='album' class="btn btn-info">List</button>

				<form id='operForm' action="/boad/modify" method="get">
					<input type='hidden' id='idx' name='idx'
						value='<c:out value="${album.album_idx}"/>'> <input
						type='hidden' name='pageNum'
						value='<c:out value="${cri.pageNum}"/>'> <input
						type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
					<input type='hidden' name='keyword'
						value='<c:out value="${cri.keyword}"/>'> <input
						type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
				</form>

			</div>
			<!--  end panel-body -->

		</div>
		<!--  end panel-body -->
	</div>
	<!-- end panel -->
</div>
<!-- /.row -->

<div class='row'>

	<div class="col-lg-12">

		<!-- /.panel -->
	
	</div>
	<!-- ./ end row -->
</div>


<script type="text/javascript">
	$(document).ready(function() {

		var operForm = $("#operForm");

		$("button[data-oper='album_modify']").on("click", function(e) {

			operForm.attr("action", "/admin/album_modify").submit();

		});

		$("button[data-oper='album'").on("click", function(e) {

			operForm.find("#album_idx").remove();
			operForm.attr("action", "/admin/album")
			operForm.submit();

		});
	});
</script>