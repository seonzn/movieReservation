<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>  
<%
	request.setCharacterEncoding("UTF-8");

	Class.forName("com.mysql.jdbc.Driver");
	
	String url = "jdbc:mysql://172.16.107.149:3306/movie";
	String id = "jk";
	String pass = "1234";
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	String star = request.getParameter("star");
	String moviename = request.getParameter("moviename");
	int sum = 0;
	
	int max = 0;
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT MAX(NUM) FROM board";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			max=rs.getInt(1);
		}
		
		sql = "INSERT INTO board(USERNAME,PASSWORD,TITLE,MEMO,REF,STAR,MOVIENAME) VALUES(?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, title);
		pstmt.setString(4, memo);
		pstmt.setInt(5, max+1);
		pstmt.setString(6,star);
		pstmt.setString(7,moviename);
		pstmt.execute();
		
				
		sql="UPDATE rank SET point = point+"+star+" WHERE moviename = '"+moviename+"'";
		PreparedStatement pstmt2 = conn.prepareStatement(sql);
		pstmt2.execute();
		
		pstmt.close();
		stmt.close();
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>
  <script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="list.jsp";
  </script>