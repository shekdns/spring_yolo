<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/header.jsp"%>



<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">차트목록</h1>
		
		<h2><a href="/admin/chart?gnrcode=1">차트</a> | <a href="/admin/chart?gnrcode=2">최신 곡</a> | 
		<a href="/admin/chart?gnrcode=3">발라드</a> |  <a href="/admin/chart?gnrcode=4">댄스</a> | 
		<a href="/admin/chart?gnrcode=5">랩/힙합</a> | <a href="/admin/chart?gnrcode=6">R&B</a> | 
		<a href="/admin/chart?gnrcode=7">인디음악</a> | <a href="/admin/chart?gnrcode=8">록/메탈</a> | 
		<a href="/admin/chart?gnrcode=9">트로트</a></h2>

	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Chart List Page
				<!--  	
				<button id='regBtn' type="button" class="btn btn-xs pull-right">Register
					New Board</button>
				-->
			</div>
			<div id="clock_time">
				<div
					style="border: 1px solid #dedede; font-size: 40px; text-align: center;"
					id="clock"></div>
			</div>

			<!-- /.panel-heading -->
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>순위</th>
							<th>이미지</th>
							<th>곡</th>
							<th>아티스트</th>
							<th>앨범</th>
							<th>등록날짜</th>
							<th>업데이트날짜</th>
							<th>코드</th>
						</tr>
					</thead>

					<c:forEach items="${chart}" var="chart">
						<tr>
							<td><c:out value="${chart.c_rank}" /></td>
							<td><img src="${chart.img_path }" width="50" height="50" /></td>
							<td><c:out value="${chart.name}" /></td>
							<td><c:out value="${chart.artist}" /></td>
							<td><c:out value="${chart.album}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss"
									value="${chart.regdate}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss"
									value="${chart.updateDate}" /></td>
							<td><c:out value="${chart.gnrcode}" /></td>
						</tr>
					</c:forEach>

				</table>

				<!-- 검색 영역 시작 -->
				<div class='row'>
					<div class="col-lg-12">

						<form id='searchForm' action="/admin/chart" method='get'>
							<select name='type'>
								<option value=""
									<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
								<option value="T"
									<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>곡</option>
								<option value="C"
									<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>아티스트</option>
								<option value="W"
									<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>앨범</option>
								<option value="TC"
									<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>곡
									or 아티스트</option>
								<option value="TW"
									<c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>곡
									or 앨범</option>
								<option value="TWC"
									<c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>곡
									or 앨범 or 아티스트</option>
							</select> <input type='text' name='keyword'
								value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
								type='hidden' name='pageNum'
								value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
								type='hidden' name='amount'
								value='<c:out value="${pageMaker.cri.amount}"/>' />
							<button class='btn btn-default'>Search</button>
						</form>
					</div>
				</div>
				<!-- 검색 영역 시작 -->

				<!--  Pagination 시작 -->
				<div class='pull-right'>
					<ul class="pagination">

						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>

					</ul>
				</div>
				<!--  Pagination 끝 -->

				<!-- 페이징 Form 시작 -->
				<form id='actionForm' action="/admin/chart" method='get'>
					<input type='hidden' name='gnrcode'
						value='${pageMaker.cri.gnrcode}'>
					<input type='hidden' name='pageNum'
						value='${pageMaker.cri.pageNum}'> <input type='hidden'
						name='amount' value='${pageMaker.cri.amount}'> <input
						type='hidden' name='type'
						value='<c:out value="${ pageMaker.cri.type }"/>'> <input
						type='hidden' name='keyword'
						value='<c:out value="${ pageMaker.cri.keyword }"/>'>
				</form>
				<!-- 페이징 Form 끝 -->


				<!-- Modal  추가 -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">Modal title</h4>
							</div>
							<div class="modal-body">처리가 완료되었습니다.</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">Save changes</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->

			</div>
			<!--  end panel-body -->
		</div>
		<!-- end panel -->
	</div>
</div>
<!-- /.row -->

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var result = '<c:out value="${result}"/>';

						checkModal(result);
						// replaceState(data, title [, url ]) 히스토리를 수정
						history.replaceState({}, null, null);

						function checkModal(result) {
							// alert(history.state);
							// 글 등록 후 리스트 화면에서 model창이 나온 뒤 새로고침을 해도 model창이 안나오도록
							// result값 체크
							// result값은 controller에서 넘어온 1회성 값으로 페이지를 다시 읽으면 null이된다.
							// history.state 는 조회에서 back 했을때 history객체의 현재 정보를 읽어 값이 있다면 
							// modal창을 띄우지 않는다.
							if (result === '' || history.state) {
								return;
							}

							if (parseInt(result) > 0) {
								$(".modal-body").html(
										"게시글 " + parseInt(result)
												+ " 번이 등록되었습니다.");
							}

							$("#myModal").modal("show");
						}

						<!--
						$("#regBtn").on("click", function() {
							self.location = "/admin/register";
						});
						-->
						var actionForm = $("#actionForm");

						// 페이지 번호 클릭 이벤트
						$(".paginate_button a").on(
								"click",
								function(e) {
									e.preventDefault();
									// console.log('click');
									actionForm.find("input[name='pageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});

						// 상세보기 클릭 이벤트
						<!--
						$(".move")
								.on(
										"click",
										function(e) {
											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='bno' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/admin/get");
											actionForm.submit();
										});
						-->
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
	function printClock() {
		var clock = document.getElementById("clock"); //출력할 장소 선택
		var currentDate = new Date(); //현재 시간
		var calender = currentDate.getFullYear() + "년"
				+ (currentDate.getMonth() + 1) + "월" + currentDate.getDate()
				+ "일"; //현재 날짜
		var amPm = '오전'; //초기값 AM

		var currentHours = addZeros(currentDate.getHours(), 2);
		var currentMinute = addZeros(currentDate.getMinutes(), 2);
		var currentSeconds = addZeros(currentDate.getSeconds(), 2);

		if (currentHours >= 12) {
			amPm = '오후';
			currentHours = addZeros(currentHours - 12, 2);
		}

		clock.innerHTML = calender + " " + currentHours + ":" + currentMinute
				+ ":" + currentSeconds + " <span style='font-size:40px;'>"
				+ amPm + "</span>";

		setTimeout("printClock()", 1000);
	}

	function addZeros(num, digit) {
		var zero = '';
		num = num.toString();
		if (num.length < digit) {
			for (i = 0; i < digit - num.length; i++) {
				zero += '0';
			}

		}
		return zero + num;
	}

	function init() {
		printClock();
	}

	init();
</script>

<%@include file="../includes/footer.jsp"%>
