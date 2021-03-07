<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.* "%>
<html>
    <head>
 <meta charset="utf-8">
        <title>영화예매</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/jquery.selectlist.css">
<%request.setCharacterEncoding("UTF-8"); %>
<%String seat = request.getParameter("chk_info"); %>


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


  <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
       

<body>
     <div id="box">
      
      <div id="top"> <jsp:include page="top.jsp"></jsp:include> </div>
      
      <div id="left"> <jsp:include page="login.jsp"></jsp:include>  
     <div><br> <jsp:include page="placemenu.jsp"></jsp:include></div>  </div>
      
      <div id="main">
       
          <center><h2>상영시간표</h2></center>
          <center>
      <form >
      <table>
      <tr>
      
      <td><input type="text" class="mybox" value="아침(06:00~12:00)" /> </td>
      </tr>
      
      <p>
      <tr>
      
      <td><input type="text" class="mybox" value="점심(12:00~17:00)" /> </td>
      </tr>
      <tr>
      
      <td><input type="text" class="mybox" value="저녁(17:00~22:00)" /> </td>
      </tr>
      <tr>
      
      <td><input type="text" class="mybox" value="심야(22:00~06:00)" /> </td>
      </tr>
    
      </table>
      
       
      
		
      
      </form>
      
      
      
      
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

      
	</div>
	
	   <div id="bottom"><jsp:include page="bottom.jsp"></jsp:include>  </div>
</body>
 
  
 
</html>