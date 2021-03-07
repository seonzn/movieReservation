<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/jquery.selectlist.css">
<title>Insert title here</title>

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
    width: 300px;
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

<%
	request.setCharacterEncoding("UTF-8");

	Class.forName("com.mysql.jdbc.Driver");
	
	String url = "jdbc:mysql://172.16.107.149:3306/movie";
	String id = "jk";
	String pass = "1234";
	
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT korean , point FROM rank ORDER BY point DESC";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			%>
			<tr>
			<td><input type="text" class="mybox1" value="<%=rs.getString("korean") %>" /><br> </td>
				</tr>

			
			<%
		}
		
		stmt.close();
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>

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

</body>
</html>