<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.* "%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>


<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="layout.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/jquery.selectlist.css">
<link rel="stylesheet" type="text/css" href="css/jquery.selectlist.css">
<title>예매내역</title>
<%request.setCharacterEncoding("UTF-8"); %>
 <%
 	String userID = request.getParameter("userID");
 
 %>
<style type="text/css"> /*스타일 정의*/ 
input{
text-align: center;
}
.mybox{
font: normal 14px '\5FAE\8F6F\96C5\9ED1';
    width: 200px;
    height: 34px;
    position: relative;
    cursor: pointer;
    display: inline-block;
    *display: inline;
    *float: left;
    *margin-right: 10px;
    background: #fff;
    border-radius: 3px;
    border: 1px solid #e3e3e3;
}
.mybox1{
font: normal 14px '\5FAE\8F6F\96C5\9ED1';
    width: 100px;
    height: 34px;
    position: relative;
    cursor: pointer;
    display: inline-block;
    *display: inline;
    *float: left;
    *margin-right: 10px;
    background: #fff;
    border-radius: 3px;
    border: 1px solid #e3e3e3;
}
</style>
</head>

<body>



<div id="box">
      
      <div id="top"> <jsp:include page="top.jsp"></jsp:include> </div>
      
      <div id="left"> <jsp:include page="login.jsp"></jsp:include>  
      <div><br> <jsp:include page="infomenu.jsp"></jsp:include></div>  </div>
      
      <div id="main">

    
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
         
        try{
            String jdbcDriver = "jdbc:mysql://172.16.107.149:3306/movie";
            String dbUser = "jk";
            String dbPwd = "1234";
             
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
             
            pstmt = conn.prepareStatement("SELECT userID,userPassword,userName,userGender,userEmail FROM user");
             
            rs = pstmt.executeQuery();
             
            while(rs.next()){
    %>	<center>
    	<form action="userInfo_delete.jsp" method="post">
    	<h2>회원정보</h2>
		<br>
		<table>
		<tr>
		<td><input type="text" class="mybox1" value="회원아이디" /> </td>
		<td><input type="text" class="mybox" value="<%= rs.getString("userID") %>"/></td>
		</tr>
		<tr>
		<td><input type="text" class="mybox1" value="회원비밀번호" /> </td>
		<td><input type="text" class="mybox" value="<%= rs.getString("userPassword") %>"/></td>
		</tr>
		
		<tr>
		<td><input type="text" class="mybox1" value="회원이름" /> </td>
		<td><input type="text" class="mybox" value="<%= rs.getString("userName") %>"/></td>
		</tr>
		
		<tr>
		<td><input type="text" class="mybox1" value="회원성별" /> </td>
		<td><input type="text" class="mybox" value="<%= rs.getString("userGender") %>"/></td>
		</tr>
		
		<tr>
		<td><input type="text" class="mybox1" value="회원이메일" /> </td>
		<td><input type="text" class="mybox" value="<%= rs.getString("userEmail") %>"/></td>
		</tr>
		<tr>
		<TD>
		<td><a href="userInfo_delete.jsp?del=<%=rs.getString("userID")%>">삭제</a>

		
</TD>
		</tr>
		</table>

		</form>
		</center>
		
        
    <%
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }
    %>

		
		
		

	
		
		
		</div>
		
		<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
      <script src="js/jquery.selectlist.js"></script>
      <script type="text/javascript">
      $(function(){
      $('select').selectlist({
         zIndex: 10,
         width: 200,
         height: 30
            });      
         })
      </script>
		
		 <div id="bottom"><jsp:include page="bottom.jsp"></jsp:include>  </div>
		 



</body>
</html>