<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.* "%>

<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="layout.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/jquery.selectlist.css">
<link rel="stylesheet" type="text/css" href="css/jquery.selectlist.css">
<title>회원정보</title>
<%request.setCharacterEncoding("UTF-8"); %>

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
             
            pstmt = conn.prepareStatement("SELECT productName,productEa,productPrice FROM sidemenu");
             
            rs = pstmt.executeQuery();
             
            while(rs.next()){
    %>	<center>
    	<form action="s.Rd.jsp" method="post">
    	<h2>사이드메뉴</h2>
		<br>
		<table>
		<tr>
		<td><input type="text" class="mybox1" value="상품명" /> </td>
		<td><input type="text" class="mybox" value="<%= rs.getString("productName") %>"/></td>
		</tr>
		<tr>
		<td><input type="text" class="mybox1" value="상품수량" /> </td>
		<td><input type="text" class="mybox" value="<%= rs.getString("productEa") %>"/></td>
		</tr>
		
		<tr>
		<td><input type="text" class="mybox1" value="상품가격 " /> </td>
		<td><input type="text" class="mybox" value="<%= rs.getString("productPrice") %>"/></td>
		</tr>
	
		<tr>
		<td><a href="s_Rd.jsp?del=<%=rs.getString("productName")%>">삭제</a></td>
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