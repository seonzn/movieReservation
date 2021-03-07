<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>영화관정보</title>

<link href="layout.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="styles1.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>

  
   

</head>
<body>

<div id="box">
		
		<div id="top"> <jsp:include page="top.jsp"></jsp:include> </div>
		
		<div id="left"> <jsp:include page="login.jsp"></jsp:include>
		<div><br> <jsp:include page="placemenu.jsp"></jsp:include></div>  </div>
		
		<div id="main">
		<br>
		<center><h2 style="color:black"> 찾아오시는길</h2><br/>
		<img src="./movie_img/school.PNG" />
		<br/>
		<b/r>
		<img src="./movie_img/comehere.PNG" /> </center>

		
		
		</div>
		
		<div id="bottom"><jsp:include page="bottom.jsp"></jsp:include>  </div>
	</div>
	
</body>
</html>