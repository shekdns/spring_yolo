<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Artist Member Register</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Artist Member Register</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

        <form role="form" action="/admin/artist_member_register" method="post" enctype="multipart/form-data">
        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        	<!--
        	controller에서 파라미터 수집시 upload file은 uploadFile 이름으로 server로 넘어간다.(binary data로)
        	하지만 BoardVO에서는 file_1,file_2,file_3의 이름으로 setter를 해줘야 한다.
        	따라서 file_1,file_2,file_3를 hidden으로 넘겨서 controller에서 file이 upload가 안됐을 경우에도
        	파라미터 수집이 되도록(값은 null로 됨) 하기위해 hidden으로 값을 넘긴다.
        	-->
			<input type="hidden" name="img_path" value="">
          <div class="form-group">
            <label>멤버 이름</label> <input class="form-control" name='member_name'>
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
          <!--  
           <div class="form-group">
            <label>아티스트 네임</label> <input class="form-control" name='artist_name'>
          </div>
          -->
            <div class="form-group">
            <label>성별</label> <input class="form-control" name='gender'>
          </div>
          
            <div class="form-group">
            <label>나이</label> <input class="form-control" name='age'>
          </div>
		
		  <!-- 
          <div class="form-group">
            <label>Writer</label> <input class="form-control" name='writer' 
                value='<sec:authentication property="principal.username"/>' readonly="readonly">
          </div>
          --> 
          
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
