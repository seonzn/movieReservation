<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	
</head>
<%
 request.setCharacterEncoding("utf-8");
 String id = request.getParameter("del");
 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url = "jdbc:mysql://172.16.107.149:3306/movie";
  Connection con = DriverManager.getConnection(url,"jk","1234");
  Statement stat = con.createStatement();
  String query = "DELETE FROM user where userID='" + request.getParameter("del")+"'";
  //쿼리문 전송
  stat.executeUpdate(query); //return 1.
  stat.close();
  con.close();
  response.sendRedirect("userInfo.jsp") ;
 }

  catch(Exception e){
  out.println( e );
 }
 %>


<body>


</body>
</html>