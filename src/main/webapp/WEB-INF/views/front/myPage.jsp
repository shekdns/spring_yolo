<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	<sec:authentication var="principal" property="principal" />


<%@include file="../includes/front_header.jsp"%>

 <!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="iq-card">
                        <div class="iq-card-body p-0">
                           <div class="iq-edit-list">
                              <ul class="iq-edit-profile d-flex nav nav-pills">
                                 <li class="col-md-3 p-0">
                                    <a class="nav-link active" data-toggle="pill" href="#personal-information">
                                    	회원 정보
                                    </a>
                                 </li>
                                 <li class="col-md-3 p-0">
                                    <a class="nav-link" data-toggle="pill" href="#chang-pwd">
                                                                                           비밀번호 변경
                                    </a>
                                 </li>
                            
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-12">
                     <div class="iq-edit-list-data">
                        <div class="tab-content">
                           <div class="tab-pane fade active show" id="personal-information" role="tabpanel">
                              <div class="iq-card">
                                 <div class="iq-card-header d-flex justify-content-between">
                                    <div class="iq-header-title">
                                       <h4 class="card-title">회원 정보</h4>
                                    </div>
                                 </div>
                                 <div class="iq-card-body">
                                    
                                       <div class=" row align-items-center">
                                          <div class="form-group col-sm-6">
                                             <label for="fname">아이디</label>
                                             <input type="text" class="form-control" id="id" 
                                             value='<c:out value="${user.id}"/>' readonly="readonly">
                                          </div>
                                          <div class="form-group col-sm-6">
                                             <label for="lname">이름</label>
                                               <input type="text" class="form-control" id="name" 
                                             value='<c:out value="${user.name}"/>' readonly="readonly">
                                          </div>
                                          <div class="form-group col-sm-6">
                                             <label for="uname">이메일</label>
                                               <input type="text" class="form-control" id="email" 
                                             value='<c:out value="${user.email}"/>' readonly="readonly">
                                          </div>
                                          <div class="form-group col-sm-6">
                                             <label for="cname">등급</label>
                              
                                               <input type="text" class="form-control" id="auth" 
                                             value='일반등급' readonly="readonly">
                                         
                                          </div>
                                       </div>
                                     
                                    
                                 </div>
                              </div>
                           </div>
                           <div class="tab-pane fade" id="chang-pwd" role="tabpanel">
                              <div class="iq-card">
                                 <div class="iq-card-header d-flex justify-content-between">
                                    <div class="iq-header-title">
                                       <h4 class="card-title">비밀번호 변경 </h4>
                                    </div>
                                 </div>
                                 <div class="iq-card-body">
                                    <form action="/front/myPage" method="post" role="form" enctype="multipart/form-data">
                                       <div class="form-group">

									  <input type='hidden' name="id" value='<c:out value="${user.id}"/>'> 
                                      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                        
                                          <label for="npass">새로운 비밀번호</label>
                                          <input type="Password" class="form-control" id="new_pass" name="pass" value="">
                                       </div>
                                       <div class="form-group">
                                          <label for="vpass">비밀번호 재입력</label>
                                          <input type="Password" class="form-control" id="re_pass" value="">
                                       </div>
                                      <input type="button"  onclick="check();" class="btn btn-primary mr-2" value="Sumbit"></input> 
                                        <!-- <button type="submit"class="btn btn-primary mr-2">Sumbit</button> -->
                                       <button type="reset" class="btn iq-bg-danger">Cancel</button>
                                    </form>
                                 </div>
                              </div>
                           </div>

                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- Wrapper END -->




<%@include file="../includes/front_footer.jsp"%>
</body>

<script>
function check() {
    var p1 = document.getElementById('new_pass').value;
    var p2 = document.getElementById('re_pass').value;
    if( p1 != p2 ) {
      alert("비밀번호가 일치 하지 않습니다");
      return false;
    }else if( !p1 || !p2){
		alert("비밀번호를 입력해주세요");
		return false;
    } 
    else{
      alert("비밀번호가 변경되었습니다.");
      $("form").submit();
      
    }

  }

</script>


</html>
