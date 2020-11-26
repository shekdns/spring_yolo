<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/front_header.jsp"%>

	<div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between">
                           <div class="iq-header-title">
                              <h4 class="card-title">YOLO 차트</h4>
                           </div>
                        </div>
                        <div class="iq-card-body">
                          	<div class="button_center">
                              <a href="/front/chart?gnrcode=1"><button type="button" class="btn btn-primary mb-1">차트</button></a>
                              <a href="/front/chart?gnrcode=2"><button type="button" class="btn btn-secondary mb-1">최신 곡</button></a>
                              <a href="/front/chart?gnrcode=3"><button type="button" class="btn btn-success mb-1">발라드</button></a>
                              <a href="/front/chart?gnrcode=4"><button type="button" class="btn btn-danger mb-1">댄스</button></a>
                              <a href="/front/chart?gnrcode=5"><button type="button" class="btn btn-warning mb-1">랩/힙합</button></a>
                              <a href="/front/chart?gnrcode=6"><button type="button" class="btn btn-info mb-1">R&B</button></a>
                              <a href="/front/chart?gnrcode=7"><button type="button" class="btn btn-light mb-1">인디음악</button></a>
                              <a href="/front/chart?gnrcode=8"><button type="button" class="btn btn-dark mb-1">록/메탈</button></a>
                               <a href="/front/chart?gnrcode=9"><button type="button" class="btn btn-warning mb-1">트로트</button></a>
                           </div>
                           <div class="table-responsive">
                              <table class="table">
                                 <thead>
                                    <tr>
                                       <th scope="col" width="100px">순위</th>
                                       <th scope="col" width="150px">이미지</th>
                                       <th scope="col" width="200px">곡</th>
                                       <th scope="col" width="200px">아티스트</th>
                                       <th scope="col" width="200px">앨범</th>
                                      
                                    </tr>
                                 </thead>
                                 <tbody>
                                 <c:forEach items="${chart}" var="chart">
                                    <tr>
                                       <th scope="row"><c:out value="${chart.c_rank}" /></th>
                                       <td><img src="${chart.img_path }" width="50" height="50" /></td>
                                       <td><c:out value="${chart.name}" /></td>
                                       <td><c:out value="${chart.artist}" /></td>
                                       <td><c:out value="${chart.album}" /></td>
                                    </tr>
                                   </c:forEach>
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>







<%@include file="../includes/front_footer.jsp"%>
</body>

</html>
