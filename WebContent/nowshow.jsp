<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>현재 상영중인 영화</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
 <style>
        ul.mylist li, ol.mylist li {
    padding: 5px 0px 5px 5px;
    margin-bottom: 5px;
    border-bottom: 1px solid #000000;
    font-size: 20px;
    font-color: #000000;
    list-style:none;
}
    </style>
</head>
<body>
<div id="box">
		
		<div id="top"> <jsp:include page="top.jsp"></jsp:include> </div>
		
		<div id="left"> <jsp:include page="login.jsp"></jsp:include>
		<br> <jsp:include page="playmoviemenu.jsp"></jsp:include></div>   </div>
		
		<div id="main2">

		  <!-- <nav> -->
    <ul class="mylist">
        <li style="color:black"><h2>현재 상영중인 영화</h2></li>
        
       <a href=http://movie.naver.com/movie/bi/mi/basic.nhn?code=125473><img src="./movie_img/movie01.PNG" ></a>
        <div><a href=http://movie.naver.com/movie/bi/mi/basic.nhn?code=125473><img src="./movie_img/movie_image01.jpg" alt="원더우먼" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 액션, 모험, 판타지, SF │ 141분  │ 2017.05.31 개봉<br><br></span>
        <span style="color:black">감독 : 패티 젠킨스<br><br></span>
        <span style="color:black">출연 : 갤 가돗, 크리스 파인<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
      
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=82473"><img src="./movie_img/movie02.PNG"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=82473"><img src="./movie_img/movie_image02.jpg" alt="캐리비안해적" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 액션, 모험, 코미디, 판타지 │ 129분  │ 2017.05.24 개봉<br><br></span>
        <span style="color:black">감독 : 요아킴 뢰닝, 에스펜 잔드베르크<br><br></span>
        <span style="color:black">출연 : 조니 뎁, 하비에르 바르뎀, 제프리 러쉬, 브렌튼 스웨이츠, 카야 스코델라리오<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=149221"><img src="./movie_img/movie03.PNG"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=149221"><img src="./movie_img/movie_image03.jpg" alt="대립군" height="160" width="120" border=1 align=left style = margin-right:20px;> </a>
        <span style="color:black">개요 : 드라마 │ 130분  │ 2017.05.31 개봉<br><br></span>
        <span style="color:black">감독 : 정윤철<br><br></span>
        <span style="color:black">출연 : 이정재, 여진구, 김무열<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=162173"><img src="./movie_img/movie04.PNG"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=162173"><img src="./movie_img/movie_image04.jpg" alt="노무현입니다" height="160" width="120" border=1 align=left style = margin-right:20px;><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=162173">
        <span style="color:black">개요 : 다큐멘터리 │ 109분  │ 2017.05.25 개봉<br><br></span>
        <span style="color:black">감독 : 이창재<br><br></span>
        <span style="color:black">출연 : 노무현<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=156083"><img src="./movie_img/movie05.PNG"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=156083"><img src="./movie_img/movie_image05.jpg" alt="겟아웃" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 미스터리, 공포, 스릴러, 드라마 │ 104분  │ 2017.05.17 개봉<br><br></span>
        <span style="color:black">감독 : 조던 필레<br><br></span>
        <span style="color:black">출연 : 다니엘 칼루야, 앨리슨 윌리암스, 브래드리 휘트포드, 캐서린 키너<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기" ></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=154112"><img src="./movie_img/movie07.PNG" alt="불한당" action="movie_order.jsp"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=154112"><img src="./movie_img/movie_image06.jpg" alt="불한당" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 범죄, 액션, 드라마 │ 120분  │ 2017.05.17 개봉<br><br></span>
        <span style="color:black">감독 : 패티 젠킨스<br><br></span>
        <span style="color:black">출연 : 갤 가돗, 크리스 파인<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=144988"><img src="./movie_img/movie08.PNG" alt ="7번째 내가 죽던날"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=144988"><img src="./movie_img/movie_image07.jpg" alt="7번째 내가 죽던날" height="160" width="120" border=1 align=left style = margin-right:20px;></a> 
        <span style="color:black">개요 : 드라마, 미스터리 │ 99분  │ 2017.05.31 개봉<br><br></span>
        <span style="color:black">감독 : 라이 루소 영<br><br></span>
        <span style="color:black">출연 : 조이 도이치<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=120160"><img src="./movie_img/movie10.PNG" alt ="미이라"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=120160"><img src="./movie_img/movie_image08.jpg" alt="미이라" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 액션, 모험, 판타지 │ 110분  │ 2017.06.06 개봉<br><br></span>
        <span style="color:black">감독 : 알렉스 커츠만<br><br></span>
        <span style="color:black">출연 : 톰 크루즈, 소피아 부텔라, 애나벨 윌리스<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기" ></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=156417"><img src="./movie_img/movie09.PNG" alt ="너와 100번째 첫사랑"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=156417"><img src="./movie_img/movie_image09.jpg" alt="너와 100번째 첫사랑" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 드라마, 멜로/로맨스 │ 116분  │ 2017.05.25 개봉<br><br></span>
        <span style="color:black">감독 : 츠키카와 쇼<br><br></span>
        <span style="color:black">출연 : 사카구치 켄타로, 미와, 류세이 료<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기" ></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=129094"><img src="./movie_img/movie06.PNG" alt ="보스베이비"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=129094"><img src="./movie_img/movie_image10.jpg" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 애니메이션, 코미디, 가족 │ 97분  │ 2017.05.03 개봉<br><br></span>
        <span style="color:black">감독 : 톰 맥그라스<br><br></span>
        <span style="color:black">출연 : 알렉 볼드윈<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
    </ul>
    <!-- </nav> -->


		</div>
		
		
		<div id="bottom"><jsp:include page="bottom.jsp"></jsp:include>  </div>
	</div>
</body>
</html>