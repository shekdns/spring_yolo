<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/front_header.jsp"%>
	
		     <!-- Page Content  -->
      <div id="content-page" class="content-page">
         <div class="container-fluid">
            <div class="row">

               <div class="col-lg-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between">
                        <div class="iq-header-title">
                           <h4 class="card-title">YOLO 아티스트</h4>
                        </div>
                     
                     </div>
                     <div class="iq-card-body">
                        
                        <ul class="list-unstyled row iq-box-hover mb-0">
                         <c:forEach items="${artist}" var="artist">
                           <li class="col-xl-2 col-lg-3 col-md-4 iq-music-box">
                              <div class="iq-card">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       
                                       <!-- 이미지가 있으면 -->
                                     <c:if test="${not empty artist.artist_img_path}">
                                       
                                     <img src="/resources/upload/${artist.artist_img_path}"
												class="img-border-radius img-fluid w-100" alt="">
                                       
                                      </c:if>
                                        <!-- 이미지가 없으면 -->
                                       <c:if test="${empty artist.artist_img_path}">
                                       
                                     <img src="/resources/vendor/bootstrap/images/noimage.png"
											class="img-border-radius img-fluid w-100" alt="">
                                       
                                      </c:if>
                                       
                                    </div>
                                    <div class="feature-list text-center">
                                        <h6 class="font-weight-600 mb-0"> <a class='move' href='<c:out value="${artist.artist_idx}"/>'>
                                        <c:out value="${artist.artist_name}"/></a></h6>
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
           
            	<!--  Pagination 시작 -->
					 <nav aria-label="...">
					<ul class="pagination justify-content-center">

						<c:if test="${pageMaker.prev}">
							<li class="page-item disabled"><a
								href="${pageMaker.startPage -1} class="page-link"">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="page-item  ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}" class="page-link">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="page-item next"><a
								href="${pageMaker.endPage +1 }" class="page-link" >Next</a></li>
						</c:if>

					</ul>
					 </nav>

				<!--  Pagination 끝 -->

				<!-- 페이징 Form 시작 -->
				<form id='actionForm' action="/front/artist" method='get'>
					<input type='hidden' name='pageNum'
						value='${pageMaker.cri.pageNum}'> <input type='hidden'
						name='amount' value='${pageMaker.cri.amount}'> <input
						type='hidden' name='type'
						value='<c:out value="${ pageMaker.cri.type }"/>'> <input
						type='hidden' name='keyword'
						value='<c:out value="${ pageMaker.cri.keyword }"/>'>
				</form>
            
            
            
            
         </div>
      </div>
	






<%@include file="../includes/front_footer.jsp"%>
</body>
	
	<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var result = '<c:out value="${result}"/>';

						
						// replaceState(data, title [, url ]) 히스토리를 수정
						history.replaceState({}, null, null);

					
						var actionForm = $("#actionForm");

						// 페이지 번호 클릭 이벤트
						$(".page-item a").on(
								"click",
								function(e) {
									e.preventDefault();
									// console.log('click');
									actionForm.find("input[name='pageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});

						// 상세보기 클릭 이벤트
						
						$(".move")
								.on(
										"click",
										function(e) {
											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='artist_idx' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/front/artist_get");
											actionForm.submit();
										});						
						// 검색 버튼 클릭 이벤트
						var searchForm = $("#searchForm");
						$("#searchForm button").on(
								"click",
								function(e) {
									if (!searchForm.find("option:selected")
											.val()) {
										alert("검색종류를 선택하세요");
										return false;
									}

									if (!searchForm.find(
											"input[name='keyword']").val()) {
										alert("키워드를 입력하세요");
										return false;
									}

									searchForm.find("input[name='pageNum']")
											.val("1");
									e.preventDefault();
									searchForm.submit();
								});
					});
	</script>
	</html>
