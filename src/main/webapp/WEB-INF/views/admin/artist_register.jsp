<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Artist Register</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Artist Register</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

        <form role="form" action="/admin/artist_register" method="post" enctype="multipart/form-data">
        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        
			<input type="hidden" name="artist_img_path" value="">
          <div class="form-group">
            <label>가수 이름</label> <input class="form-control" name='artist_name'>
          </div>
          
            <div class="form-group">
            <label>데뷔 년도</label> <input class="form-control" name='debut'>
          </div>
          
            <div class="form-group">
            <label>타입</label> <input class="form-control" name='artist_type'>
          </div>
          
            <div class="form-group">
            <label>성별</label> <input class="form-control" name='gender'>
          </div>
	
          <div class="form-group">
            <label>가수 이미지 등록</label> <input type="file" class="form-control" name='uploadFile'>
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
