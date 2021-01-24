# yolo
  Spring MVC Web Project
# 설명
    현재 서비스 하고있는 온라인 음악 스트리밍 사이트를 컨셉으로 하여 만든 YOLO 입니다. Spring MVC 를 기반의 JAVA 웹 기반 개인 프로젝트입니다.
    소스 코드 및 pdf 문서로 작성하였습니다. 프로젝트 설명서를 보시려면 pdf 형식의 문서를 참고해 주시기 바랍니다. 
# 개발환경
*  Window 10(x64)
*  Tomcat Server9
*  Oracle JDK 1.8.0_221
*  Oracle 12g
# 구현기술
*  Spring Core 5.2.7 RELEASE
*  MyBatis 3.5.5
*  Maven
*  HTML5, CSS3, JavaScript
# LIB/API
*  Jquery 3.4.1
*  Bootstrap4
*  Aplyer
*  Jsoup
# DB
![최종ERD](https://user-images.githubusercontent.com/15880534/105631550-59d06d80-5e92-11eb-9a8e-1cbdfb7a519f.PNG)

# Front
<center><img src="https://user-images.githubusercontent.com/15880534/105631782-89cc4080-5e93-11eb-9eb5-f3574f0ed5fa.jpg" width="50%" height="50%"></center>
<center><img src="https://user-images.githubusercontent.com/15880534/105631819-b4b69480-5e93-11eb-9b6d-5e0c3ec0f48f.jpg" width="50%" height="50%"></center>
<center><img src="https://user-images.githubusercontent.com/15880534/105632886-ed0ca180-5e98-11eb-8951-6c6d1bf6da8a.jpg" width="50%" height="50%"></center>

# Admin
<center><img src="https://user-images.githubusercontent.com/15880534/105632353-ffd1a700-5e95-11eb-910c-e2810a0751ac.jpg" ></center>

# Web Route
|Desc|Method|Route|What is?|
|----|----|----|----|
|index|GET|/|인덱스|
|signIn|GET|/front/sign_in|로그인|
|signUp|POST|/front/sign_up|회원가입|
|logOut|GET|/logout|로그아웃|
|Adim_chart|GET|/admin/chart|관리자차트목록|
|chart_insert|GET|/admin/insert|음악 차트 넣기|
|chart_update|GET|/admin/update|음악 차트 업데이트|
|chart_clear|GET|/admin/clear|음악 차트 초기화|
|Admin_artist|GET|/admin/artist|가수 관리 페이지|
|Admin_artist_Member|GET|/admin/artist_member|가수 멤버 관리 페이지|
|Admin_album|GET|/admin/album|앨범 관리 페이지|
|Admin_song|GET|/admin/song|음악 관리 페이지|
|Front_chart|GET|/front/chart|차트 페이지|
|Front_album|GET|/front/album|앨범 페이지|
|Front_song|GET|/front/song|음악 페이지|
|Front_artist|GET|/front/artist|가수 페이지|
|Front_video|GET|/front/video|영상 페이지|
|Mypage|GET|/front/myPage|유저 페이지|
|Mylist|GET|/front/myList|유저 개인 리스트|
|checkList|POST|/front/checkList|좋아요 유무 판단|


