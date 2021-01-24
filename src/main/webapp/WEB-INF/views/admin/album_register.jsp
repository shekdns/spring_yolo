<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Album Register</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Album Register</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

        <form role="form" action="/admin/album_register" method="post" enctype="multipart/form-data">
        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        
			<input type="hidden" name="album_img_path" value="">
          <div class="form-group">
            <label>앨범 이름</label> <input class="form-control" name='album_name'>
          </div>
          
          <div class="form-group">
          	<label>아티스트 번호</label>
          	<select class="form-control" name="artist_idx">
          		<c:forEach items="${artist}" var="artist">
      				<option value="${artist.artist_idx}"><c:out value="${artist.artist_idx}" /> : 
      				<c:out value="${artist.artist_name}" /></option>
          		</c:forEach>
          	</select>
          </div>
          
          <div class="form-group">
          	<label>아티스트 이름</label>
          	<select class="form-control" name="artist_name">
          		<c:forEach items="${artist}" var="artist">
      				<option value="${artist.artist_name}"><c:out value="${artist.artist_name}" /></option>
          		</c:forEach>
          	</select>
          </div>

            <div class="form-group">
            <label>장르</label> <input class="form-control" name='genre'>
          </div>
          
            <div class="form-group">
            <label>타입</label> <input class="form-control" name='album_type'>
          </div>
		
     
          <div class="form-group">
            <label>앨범 이미지 등록</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          
          <button type="submit" class="btn btn-default">Submit
            Button</button>
          <button type="reset" class="btn btn-default">Reset Button</button>
        </form>

      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->
<%@include file="../includes/footer.jsp"%>
