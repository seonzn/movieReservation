<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>CSS MenuMaker</title>
</head>
<body>

<div id='cssmenu'>
<ul>
	<li><a href='#'><span><img src="images/logo.png" height="32" alt="로고"> 영화예매사이트 </span></a>
   <li class='active'><a href='main.jsp'><span>영화홈</span></a></li>
   <li class='has-sub'><a href='#'><span>상영작,예정작</span></a>
      <ul>
         <li><a href='nowshow.jsp'><span>현재상영영화</span></a></li>
         <li><a href='aftershow.jsp'><span>개봉예정영화</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='movie_order.jsp'><span>예매하기</span></a>
      <ul>
         <li><a href='movie_order.jsp'><span>예매하기</span></a></li>
         <li class='last'><a href='sidemenu.jsp'><span>사이드 메뉴</span></a></li>
      </ul>
   </li>
   <li class='last'><a href='place.jsp'><span>영화관정보</span></a></li>
   <li class='last'><a href='list.jsp'><span>커뮤니티</span></a></li>
   <li class='last'><a href='userInfo.jsp'><span>내정보</span></a></li>
</ul>
</div>

</body>
</html>