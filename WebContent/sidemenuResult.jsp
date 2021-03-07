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
<title>예매내역</title>
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
 <%
        // input 에서 입력한 값들을 변수에 담아준다
        String productName = request.getParameter("productName");
		 String productEa = request.getParameter("productEa");
      String productPrice = request.getParameter("productPrice");


        
      try
      {
         Class.forName("com.mysql.jdbc.Driver");
         String DB_URL = "jdbc:mysql://172.16.107.149:3306/movie"; // 아까 예제에서와 마찬가지로 url을 설정하죠
         
         Connection con = DriverManager.getConnection(DB_URL, "jk", "1234");
         
         String sql = "INSERT INTO sidemenu(productName,productEa,productPrice) VALUES(?,?,?)"; // sql문 작성(id와 name, pwd값들을 보내기위한 작업)
         
         PreparedStatement pstmt = con.prepareStatement(sql);
         pstmt.setString(1,productName); // values에 들어갈 각각의 id, name, pwd 설정
         pstmt.setString(2,productEa);
         pstmt.setString(3,productPrice);
         


         
         pstmt.executeUpdate(); // sql문 실행(회원추가 실행)
         
         pstmt.close();
         con.close();
      }
      catch(ClassNotFoundException e) // 예외처리
      {
         out.println(e);
      }
      catch(SQLException e)
      {
         out.println(e);
      }
      
   %>


<%-- <%
   //from안에 있는 input 태그의 값을 읽어온다.
   
%> --%>


<div id="box">
      
      <div id="top"> <jsp:include page="top.jsp"></jsp:include> </div>
      
      <div id="left"> <jsp:include page="login.jsp"></jsp:include>  
      <div><br> <jsp:include page="ordermenu.jsp"></jsp:include></div>  </div>
      
      <div id="main">
   
      
      <center>
      <form>
      <h2>예매확인</h2>
      <table>
      <tr>
      <td><input type="text" class="mybox1" value="상품명" /> </td>
      <td><input type="text" class="mybox" value="<%=productName%>"/></td>
      </tr>
 
      <tr>
      <td><input type="text" class="mybox1" value="상품수량" /> </td>
      <td><input type="text" class="mybox" value="<%=productEa%>"/></td>
      </tr>
      
      <tr>
      <td><input type="text" class="mybox1" value="상품가격" /> </td>
      <td><input type="text" class="mybox" value="<%=productPrice%>"/></td>
      </tr>
 
      </table>
      </form>
      </center>
      
      
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