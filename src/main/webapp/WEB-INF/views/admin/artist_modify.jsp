<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
    <h1 class="page-header">artist Modify</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">artist Modify</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

      <form role="form" action="/admin/artist_modify" method="post" enctype="multipart/form-data">
     
			<c:choose>
				<c:when test="${not empty artist.artist_img_path}">
		            <input type="hidden" name="artist_img_path" value="${artist.artist_img_path}">
		        </c:when>
		        <c:otherwise>
					<input type="hidden" name="artist_img_path" value="">		
		        </c:otherwise>
			</c:choose>
      
        <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
        <input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
	    <input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
		<input type='hidden' name='artist_idx' value='<c:out value="${artist.artist_idx}"/>'>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
 

<div class="form-group">
  <label>name</label> 
  <input class="form-control" name='artist_name' 
    value='<c:out value="${artist.artist_name }"/>' >
</div>

<div class="form-group">
  <label>debut</label> 
  <input class="form-control" name='debut' 
    value='<c:out value="${artist.debut }"/>' >
</div>

<div class="form-group">
  <label>type</label> 
  <input class="form-control" name='artist_type' 
    value='<c:out value="${artist.artist_type}"/>' >
</div>

<div class="form-group">
  <label>gender</label> 
  <input class="form-control" name='gender' 
    value='<c:out value="${artist.gender }"/>' >
</div>


	<div class="form-group">
	<label>이미지</label>
		<c:if test="${not empty artist.artist_img_path}">
			<a href="/resources/upload/${artist.artist_img_path}" target="_blank"><img src="/resources/upload/${artist.artist_img_path}" id="thumb_"></a>
			<script>
	        	document.getElementById('thumb_').src="/resources/upload/" + getThumbFileName('${artist.artist_img_path}');
			</script>
		</c:if>
		<input type="file" class="form-control" name='uploadFile'>
	</div>

			<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
			<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
  			<button type="submit" data-oper='list' class="btn btn-info">List</button>
</form>


      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->

<script type="text/javascript">
$(document).ready(function() {


	  var formObj = $("form");

	  $('button').on("click", function(e){
	    
	    e.preventDefault(); 
	    
	    var operation = $(this).data("oper");
	    
	    console.log(operation);
	    
	    if(operation === 'remove'){
	      formObj.attr("action", "/admin/artist_remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	      formObj.attr("action", "/admin/artist").attr("method","get");

	      var pageNumTag = $("input[name='pageNum']").clone();
	      var amountTag = $("input[name='amount']").clone();
	      var keywordTag = $("input[name='keyword']").clone();
	      var typeTag = $("input[name='type']").clone();      
	      
	      formObj.empty();
	      
	      formObj.append(pageNumTag);
	      formObj.append(amountTag);
	      formObj.append(keywordTag);
	      formObj.append(typeTag);
	    }
	    
	    formObj.submit();
	  });

});
</script>
  




<%@include file="../includes/footer.jsp"%>
