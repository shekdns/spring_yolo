<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<div class="row">
			<div class="col-lg-12">
				<div class="iq-card ">
					<div class="iq-card-header d-flex justify-content-between border-0">
						<div class="iq-header-title">
							<h4 class="card-title">최신 곡</h4>
						</div>
					</div>
					<div class="iq-card-body  iq-realeses-back">
						<div class="row">

							<div class="col-md-6">
								<ul class="list-unstyled iq-song-slide mb-0 realeases-banner">
									<c:forEach items="${main_song}" var="song">
										<li>
											<div
												class="d-flex justify-content-between align-items-center">
												<div class="media align-items-center col-10 col-md-2">
													<div class="iq-realese-song ">
														<img
															src="/resources/upload/${song.song_img_path}"
															class="img-border-radius avatar-60 img-fluid" alt="">
													</div>
												</div>
												<p class="mb-0 col-md-3  iq-m-time">
													<c:out value="${song.song_name}" />
												</p>
												<p class="mb-0 col-md-3  iq-m-time">
													<c:out value="${song.artist_name}" />
												</p>
												<p class="mb-0 col-2 col-md-2">
													<a href="javascript:void()" class="album-poster"
														data-switch="<c:out value="${song.song_idx}" />"><i
														class="las la-play-circle font-size-32"></i></a>
												</p>
												<div
													class="iq-card-header-toolbar iq-music-drop d-flex align-items-center col-md-1">

												</div>
											</div>
										</li>
									</c:forEach>
								</ul>

							</div>

							<div class="col-md-6">
								<ul class="list-unstyled iq-song-slide mb-0 realeases-banner">
									<c:forEach items="${main_song2}" var="song">
										<li>
											<div
												class="d-flex justify-content-between align-items-center">
												<div class="media align-items-center col-10 col-md-2">
													<div class="iq-realese-song ">
														<img
															src="/resources/upload/${song.song_img_path}"
															class="img-border-radius avatar-60 img-fluid" alt="">
													</div>
												</div>
												<p class="mb-0 col-md-3  iq-m-time">
													<c:out value="${song.song_name}" />
												</p>
												<p class="mb-0 col-md-3  iq-m-time">
													<c:out value="${song.artist_name}" />
												</p>
												<p class="mb-0 col-2 col-md-2">
													<a href="javascript:void()" class="album-poster"
														data-switch="<c:out value="${song.song_idx}" />"><i
														class="las la-play-circle font-size-32"></i></a>
												</p>
												<div
													class="iq-card-header-toolbar iq-music-drop d-flex align-items-center col-md-1">

												</div>
											</div>
										</li>
									</c:forEach>
								</ul>

							</div>

						</div>
					</div>
				</div>
			</div>


			<div class="col-lg-12">
				<div class="iq-card">
					<div
						class="iq-card-header d-flex justify-content-between align-items-center">
						<div class="iq-header-title">
							<h4 class="card-title">특집 앨범</h4>
						</div>
						<div class="d-flex align-items-center">
							<b class="mb-0 text-primary"><a href="/front/album">View
									More <i class="las la-angle-right"></i>
							</a></b>
						</div>
						<div id="feature-album-slick-arrow" class="slick-aerrow-block"></div>
					</div>
					<div class="iq-card-body">
						<ul class="list-unstyled row  feature-album iq-box-hover mb-0">
							<c:forEach items="${main_album}" var="album">
								<li class="col-lg-2 iq-music-box">
									<div class="iq-card mb-0">
										<div class="iq-card-body p-0">
											<div class="iq-thumb">
												<div class="iq-music-overlay"></div>

												<c:if test="${empty album.album_img_path}">

													<img src="/resources/vendor/bootstrap/images/noimage.png"
														class="img-border-radius img-fluid w-100" alt="">
														

												</c:if>
												<c:if test="${not empty album.album_img_path}">
													<a class='move' href='<c:out value="${album.album_idx}"/>'><img
														src="/resources/upload/${album.album_img_path}"
														class="img-border-radius img-fluid w-100" alt=""></a>
												</c:if>
											</div>
											<div class="feature-list text-center">
												<h6 class="font-weight-600 mb-0">
													<a class='move' href='<c:out value="${album.album_idx}"/>'><c:out
															value="${album.album_name}" /></a>
												</h6>
												<p class="mb-0">
													<c:out value="${album.artist_name}" />
												</p>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-header d-flex justify-content-between">
						<div class="iq-header-title">
							<h4 class="card-title">트렌딩 음악</h4>
						</div>
						<div class="d-flex align-items-center">
							<b class="mb-0 text-primary"><a href="/front/song">View
									More <i class="las la-angle-right"></i>
							</a></b>
						</div>
					</div>
					<div class="iq-card-body">
						<ul class="list-unstyled row iq-box-hover mb-0">
							<c:forEach items="${main_song12}" var="song">
								<li class="col-xl-2 col-lg-3 col-md-4 iq-music-box">
									<div class="iq-card">
										<div class="iq-card-body p-0">
											<div class="iq-thumb">
												<div class="iq-music-overlay"></div>

												<c:if test="${empty song.song_img_path}">
													<img src="/resources/vendor/bootstrap/images/noimage.png"
														class="img-border-radius img-fluid w-100" alt="">
												</c:if>
				                              <c:if test="${not empty song.song_img_path}">
												<img src="/resources/upload/${song.song_img_path}"
													class="img-border-radius img-fluid w-100" alt="">
											  </c:if>
											</div>
											<div class="feature-list text-center">
												<h6 class="font-weight-600  mb-0">
													<a class='move3' href='<c:out value="${song.song_idx}"/>'><c:out
															value="${song.song_name}" /></a>
												</h6>
												<p class="mb-0">
													<c:out value="${song.artist_name}" />
												</p>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>


					</div>
				</div>
			</div>
			<!--  -->
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-header d-flex justify-content-between">
						<div class="iq-header-title">
							<h4 class="card-title">인기 아티스트</h4>
						</div>
						<div class="d-flex align-items-center">
							<b class="mb-0 text-primary"><a href="/front/artist">View
									More <i class="las la-angle-right"></i>
							</a></b>
						</div>
					</div>
					<div class="iq-card-body">
						<ul class="list-unstyled row  iq-box-hover mb-0">
							<c:forEach items="${main_artist}" var="artist">
								<li class="col-xl-2 col-lg-3 col-md-4 iq-music-box">
									<div class="iq-card ">
										<div class="iq-card-body p-0">
											<div class="iq-thumb">
												<div class="iq-music-overlay"></div>
											
													<c:if test="${empty artist.artist_img_path}">
													<img src="/resources/vendor/bootstrap/images/noimage.png"
														class="img-border-radius img-fluid w-100" alt="">
												</c:if>
											
											<c:if test="${not empty artist.artist_img_path}">
												<img src="/resources/upload/${artist.artist_img_path}"
													class="img-border-radius img-fluid w-100" alt="">
												</c:if>

											</div>
											<div class="feature-list text-center">
												<h6 class="font-weight-600  mb-0">
													<a class='move2'
														href='<c:out value="${artist.artist_idx}"/>'><c:out
															value="${artist.artist_name}" /></a>
												</h6>

											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-6 col-md-12">
						<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
							<div
								class="iq-card-header d-flex justify-content-between align-items-center">
								<div class="iq-header-title">
									<h4 class="card-title">차트</h4>
								</div>
								<div class="d-flex align-items-center">
									<b class="mb-0 text-primary"><a href="/front/chart">View
											More <i class="las la-angle-right"></i>
									</a></b>
								</div>
								<div id="hot-song-slick-arrow" class="slick-aerrow-block"></div>
							</div>
							<div class="iq-card-body">
								<ul class="list-unstyled row hot-songs mb-0">
									<c:forEach items="${main_chart}" var="chart">
										<li class="col-lg-12">
											<div class="iq-card iq-card-transparent">
												<div class="iq-card-body p-0">
													<div class="media align-items-center">
														<div class="iq-thumb-hotsong">
															<div class="iq-music-overlay"></div>
															<img src="${chart.img_path}" class="img-fluid avatar-60"
																alt="">
														</div>
														<div class="media-body ml-3">
															<h6 class="mb-0 iq-song-title">
																<c:out value="${chart.name}" />
															</h6>
															<small><c:out value="${chart.artist}" /></small>
														</div>
													</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<!-- 뮤비 -->
					<div class="col-lg-6 col-md-12">
						<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
							<div
								class="iq-card-header d-flex justify-content-between align-items-center">
								<div class="iq-header-title">
									<h4 class="card-title">최신 영상</h4>
								</div>
								<div class="d-flex align-items-center">
									<b class="mb-0 text-primary"><a href="/front/video">View
											More <i class="las la-angle-right"></i>
									</a></b>
								</div>
								<div id="hot-video-slick-arrow" class="slick-aerrow-block"></div>
							</div>
							<div class="iq-card-body">
								<ul class="list-unstyled row iq-box-hover hot-video mb-0">

									<c:forEach items="${main_video}" var="song">
										<li class="col-lg-12">
											<div class="iq-card mb-lg-0">
												<div class="iq-card-body p-0">
													<div class="iq-thumb">

														<iframe width="354" height="199" src="${song.song_video}"
															frameborder="0"
															allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
                                               	gyroscope; picture-in-picture"
															allowfullscreen></iframe>

													</div>
													<div class="feature-list text-center">
														<h6 class="font-weight-600  mb-0">
															<c:out value="${song.song_name}" />
														</h6>
														<p class="mb-0">
															<c:out value="${song.artist_name}" />
														</p>
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
			</div>


			<form id='albumForm' action="/front/index" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>
			</form>

			<form id='songForm' action="/front/index" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>
			</form>

			<form id='artistForm' action="/front/index" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>
			</form>
			
			
				
		</div>