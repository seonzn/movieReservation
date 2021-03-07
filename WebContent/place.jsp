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

<STYLE>
.cycle-slideshow, .cycle-slideshow * { -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; }
.cycle-slideshow { width: 700px; min-width: 200px; max-width: 700px; margin: 10px auto; padding: 0; position: relative;}
.cycle-slideshow div.slide { width: 100%; height: 100% }
.cycle-slideshow img { 
    /* 
    some of these styles will be set by the plugin (by default) but setting them here
    helps avoid flash-of-unstyled-content
    */
    position: absolute; top: 0; left: 0;
    width: 100%; padding: 0; display: block;
}
/* in case script does not load */
.cycle-slideshow img:first-child {
    position: static; z-index: 100;
}
.cycle-pager { 
    text-align: center; width: 100%; z-index: 500; position: absolute; top: 2px; overflow: hidden;
}
.cycle-pager span { 
    font-family: arial; font-size: 50px; width: 16px; height: 16px; 
    display: inline-block; color: #ddd; cursor: pointer; 
}
.cycle-pager span.cycle-pager-active { color: #D69746;}
.cycle-pager > * { cursor: pointer;}
</STYLE>  
   

</head>
<body>

<div id="box">
		
		<div id="top"> <jsp:include page="top.jsp"></jsp:include> </div>
		
		<div id="left"> <jsp:include page="login.jsp"></jsp:include>
		<div><br> <jsp:include page="placemenu.jsp"></jsp:include></div>  </div>
		
		<div id="main">
		<br>
		<center><h2 style="color:black"> 4D 영화관</h2> </center>
		<div class="cycle-slideshow"
    cycle-slideshow data-cycle-loader="wait"
    data-cycle-timeout=1000
>

    <img src="./movie_img/place001.PNG">
    <img src="./movie_img/place002.PNG">
    <img src="./movie_img/place003.PNG">
    <img src="./movie_img/place004.PNG">

</div>
		
		
		</div>
		
		<div id="bottom"><jsp:include page="bottom.jsp"></jsp:include>  </div>
	</div>
	
</body>
</html>