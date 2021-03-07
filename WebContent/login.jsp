<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="user.User"%>
    <%@ page import = "user.UserDAO" %>
<jsp:useBean id="user" class="user.User" scope="request"/>
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>


div {padding: 30px 0}
form {
  position: relative;
  width: 150px;
  margin: 0 auto;
}

.d4 {background: #F15B42;}
.d4 form {
  background: #F9F0DA;
  border-bottom: 4px solid #be290e;
}
.d4 input, .d4 button {
  border: none;
  outline: none;
  background: transparent;
}
.d4 input {

  height: 42px;
  padding-left: 10px;
}

.d4 button:before {
  content: "\f178";
  font-family: FontAwesome;
  font-size: 20px;
  color: #be290e;
}

</style>
</head>
<body>
<%
	String userid = (String)session.getAttribute("login");
	if(userid != null){
	%>
<div class="d4">
<form method="post" action="logoutAction.jsp">
  <h5 align ="center"><%= userid %>님 환영합니다 </h5>
  <br>
  <input type="submit" class="btn btn-primary form-control"  value="로그아웃" /> 
  <a href="userInfo.jsp"><input type="button" value="내정보 수정" OnClick="userInfo.jsp" /></a>
</form>
</div>
<%
	}else{
%>
<div class="d4">
<form method="post" action="loginAction.jsp">
   
  <input type="text" placeholder="아이디 입력"   name="userID">
  <input type="password" placeholder="비밀번호 입력" name="userPassword">
  <input type="submit" class="btn btn-primary form-control"   value="로그인" /> 
  <input type="button" value="회원가입" onclick="window.open('join.jsp','','resizable=no width=300 height=500')" />
</form>
</div>
<%
	}
%>
</body>
</html>