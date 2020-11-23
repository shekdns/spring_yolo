<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" charset=utf-8" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!--LINK !-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- APlayer.CSS-->
    <!--CSS -->
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
    <link rel="stylesheet" href="/resources/vendor/bootstrap/front_css2/index.css">
    <link rel="stylesheet" href="/resources/vendor/bootstrap/front_css2/header.css">
	 <link rel="stylesheet" href="/resources/vendor/bootstrap/front_css2/APlayer.min.css"> 
	 <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aplayer/1.10.1/APlayer.min.css"> -->
	 
	
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:100,300,400'>
    <link rel="stylesheet" href="/resources/vendor/bootstrap/front_css2/search.css">
    <title>YOLO</title>

  </head>
  <body>
      <header id="header">
        <div class="header_inner">
            <h1 class="yolo_bi">
             <a href="index.html"><span class="ir">YOLO</span></a>
            </h1>
            
            <nav role="navigation" class="nav_gnb">
              <ul>
                <li><a href="#">둘러보기</a></li>
                <li><a href="#">보관함</a></li>
              </ul>
            </nav>

            <nav role="navigation" class="nav_gnb">
              <form class="search-form">
              <input type="search" value="" placeholder="검색어를 입력하세요." class="search-input">
              <button type="submit" class="search-button">
                <svg class="submit-button">
                  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#search"></use>
                </svg>
              </button>


            </form>
            <svg xmlns="http://www.w3.org/2000/svg" width="0" height="0" display="none">
              <symbol id="search" viewBox="0 0 32 32">
                <path d="M 19.5 3 C 14.26514 3 10 7.2651394 10 12.5 C 10 14.749977 10.810825 16.807458 12.125 18.4375 L 3.28125 27.28125 L 4.71875 28.71875 L 13.5625 19.875 C 15.192542 21.189175 17.250023 22 19.5 22 C 24.73486 22 29 17.73486 29 12.5 C 29 7.2651394 24.73486 3 19.5 3 z M 19.5 5 C 23.65398 5 27 8.3460198 27 12.5 C 27 16.65398 23.65398 20 19.5 20 C 15.34602 20 12 16.65398 12 12.5 C 12 8.3460198 15.34602 5 19.5 5 z" />
              </symbol>

            </svg>
            </nav>
            <nav role="navigation" class="nav_gba">
              <ul>
                <li><a href="login.html">로그인</a></li>
                <li><a href="#">회원가입</a></li>
              </ul>
            </nav>


        </div>
      </header>


    <div class="main">
        <div class="container">
       
             <div class="row">
                <div class="col-md-12">
                    <h3>New Releasess</h3>
                </div>
                <div class="col-md-3">
                  <a href="javascript:void();" class="album-poster" data-switch="0">
                    <img src="https://img.insight.co.kr/static/2017/04/05/700/GDW2BO25B4W7D363A8VX.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                  </a>
                  <h4>태연</h4>
                  <p>Make me love you - 2017</p>
                </div>

                <div class="col-md-3">
                  <a href="javascript:void();" class="album-poster" data-switch="1">
                    <img src="https://i.ytimg.com/vi/juhcxR__LxM/hqdefault.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                  </a>
                  <h4>Twice</h4>
                  <p>Knock Knock - 2017</p>
                </div>

                <div class="col-md-3">
                  <a href="javascript:void();" class="album-poster" data-switch="2">
                    <img src="https://t1.daumcdn.net/cfile/tistory/9971BB4E5EA040A432?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                  </a>
                  <h4>에이프릴</h4>
                  <p>Lalarilala - 2020</p>
                </div>

                <div class="col-md-3">
                  <a href="javascript:void();" class="album-poster" data-switch="3">
                    <img src="https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                  </a>
                  <h4>Lorem ipsum</h4>
                  <p>lorem ipsum - 2010</p>
                </div>            

        </div>

      </div>
  </div>
 
 <!-- Footer END -->
    <div id="player">
       <input type="button" class="dbutton" >
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <!-- aplayer API  -->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/aplayer/1.10.1/APlayer.min.js">  </script>
   <script  src="/resources/vendor/bootstrap/front_js2/aplayer.js"></script>
      <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    

  </body>
</html>
    