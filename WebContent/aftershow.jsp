<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개봉 예정인 영화</title>
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
		<br> <jsp:include page="playmoviemenu.jsp"></jsp:include></div>     </div>
		
		<div id="main2">

		  <!-- <nav> -->
    <ul class="mylist">
        <li style="color:black"><h2>개봉 예정인 영화</h2></li>
        
       <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=155256"><img src="./movie_img/movie001.PNG" ></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=155256"><img src="./movie_img/movie_image001.jpg" alt="악녀" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 액션 │ 123분  │ 2017.06.08 개봉<br><br></span>
        <span style="color:black">감독 : 정병길<br><br></span>
        <span style="color:black">출연 : 김옥빈, 신하균, 성준, 김서형, 조은지<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
      
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=156091"><img src="./movie_img/movie002.PNG"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=156091"><img src="./movie_img/movie_image002.jpg" alt="심야식당2" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 드라마 │ 108분  │ 2017.06.08 개봉<br><br></span>
        <span style="color:black">감독 : 마츠오카 조지<br><br></span>
        <span style="color:black">출연 : 코바야시 카오루<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=154508"><img src="./movie_img/movie003.PNG"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=154508"><img src="./movie_img/movie_image003.jpg" alt="용순" height="160" width="120" border=1 align=left style = margin-right:20px;></a> 
        <span style="color:black">개요 : 드라마 │ 104분  │ 2017.06.08 개봉<br><br></span>
        <span style="color:black">감독 : 신준<br><br></span>
        <span style="color:black">출연 : 이수경, 최덕문<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=40932"><img src="./movie_img/movie004.PNG"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=40932"><img src="./movie_img/movie_image004.jpg" alt="매치포인트" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 범죄, 멜로/로맨스, 느와르, 스릴러, 드라마 │ 123분  │ 2017.06.08 개봉<br><br></span>
        <span style="color:black">감독 : 우디 앨런<br><br></span>
        <span style="color:black">출연 : 조나단 리스 마이어스, 스칼렛 요한슨, 메튜 구트 , 에밀리 모티머, 페네로프 윌튼<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=56220"><img src="./movie_img/movie005.PNG"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=56220"><img src="./movie_img/movie_image005.jpg" alt="스쿠프" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 코미디, 판타지, 미스터리, 멜로/로맨스 │ 95분  │ 2017.06.08 개봉<br><br></span>
        <span style="color:black">감독 : 우디 앨런<br><br></span>
        <span style="color:black">출연 : 휴 잭맨, 스칼렛 요한슨, 우디 앨런<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=149479"><img src="./movie_img/movie006.PNG" alt="델타보이즈" ></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=149479"><img src="./movie_img/movie_image006.jpg" alt="델타보이즈" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 드라마, 코미디 │ 120분  │ 2017.06.08 개봉<br><br></span>
        <span style="color:black">감독 : 고봉수<br><br></span>
        <span style="color:black">출연 : 갤 가돗, 크리스 파인<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기" ></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=140653"><img src="./movie_img/movie007.PNG" alt ="나는 고양이로소이다"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=140653"><img src="./movie_img/movie_image007.jpg" alt="나는 고양이로소이다" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 다큐멘터리 │ 90분  │ 2017.06.08 개봉<br><br></span>
        <span style="color:black">감독 : 조은성<br><br></span>
        <span style="color:black">출연 : 김하연, 박선미, 장혁진, 이용한, 짱스웨이 양밍위에, 천시촨, 지엔 페이 링, 장찡메이, 쵸웨이, 쿠도 쿠미코, 우에하라 고지, 토미모토<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=84917"><img src="./movie_img/movie008.PNG" alt ="로마 위드 러브"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=84917"><img src="./movie_img/movie_image008.jpg" alt="로마 위드 러브" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 코미디 │ 111분  │ 2017.06.08 개봉<br><br></span>
        <span style="color:black">감독 : 우디 앨런<br><br></span>
        <span style="color:black">출연 : 알렉 볼드윈, 엘렌 페이지, 제시 아이젠버그 ,페넬로페 크루즈, 로베르토 베니니, 우디 앨런<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=138254"><img src="./movie_img/movie009.PNG" alt ="8인의 수상한 신사들"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=138254"><img src="./movie_img/movie_image009.jpg" alt="8인의 수상한 신사들" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 액션, 코미디 │ 111분  │ 2017.06.08 개봉<br><br></span>
        <span style="color:black">감독 : 기타노 다케시<br><br></span>
        <span style="color:black">출연 : 후지 타츠야<br></span>
        <br>
        <a href="movie_order.jsp"><img src="./movie_img/reservation.PNG" alt ="예매하기"></a>
        <img src="./movie_img/preview.PNG" alt ="예고편">
        </div>
        
        
        <br clear=left>
        <li></li>
        <a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=12981"><img src="./movie_img/movie010.PNG" alt ="사랑방 손님과 어머니"></a>
        <div><a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=12981"><img src="./movie_img/movie_image010.jpg" height="160" width="120" border=1 align=left style = margin-right:20px;></a>
        <span style="color:black">개요 : 드라마 │ 95분  │ 2017.06.08 개봉<br><br></span>
        <span style="color:black">감독 : 조문진<br><br></span>
        <span style="color:black">출연 : 방희, 하명중, 도금봉, 김상순, 이효정, 박정자<br></span>
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