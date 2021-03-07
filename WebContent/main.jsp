<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.User"%>
<%@ page import = "user.UserDAO" %>
<jsp:useBean id="user" class="user.User" scope="request"/>
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 홈페이지</title>

<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="box">
		
		<div id="top"> <jsp:include page="top.jsp"></jsp:include> </div>
		
		<div id="left"> <jsp:include page="login.jsp"></jsp:include>  </div>

		<div id="main">
		<br>
		<center>
		 <div > <span style="color:black"><h2>현재 상영중인 영화</h2> </span></div>

		 <jsp:include page="image_slide.jsp"></jsp:include>
		  </center>
		
		
		<br>
		<center>
		 <div > <span style="color:black"> <h2>영화 평점순위</h2> </span>
		 <h>평점높은순</h>
		 <br>
		 <br>
		 <jsp:include page="rank.jsp"></jsp:include>
		 </div> 
		 </center>
		 
		<br>
		 
		</div>
		
		
		<div id="bottom"><jsp:include page="bottom.jsp"></jsp:include>  </div>
	</div>
	
</body>
</html>