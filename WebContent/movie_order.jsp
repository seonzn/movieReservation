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
      <div><br> <jsp:include page="ordermenu.jsp"></jsp:include></div>  </div>
      
      <div id="main">
       
          <center><h2>영화예매</center>
          <center>
      <form action="orderResult.jsp" method="post" name="movie_info">
      <table>
      <tr>
      
      <td><input type="text" class="mybox1" value="상영작" /> </td>
      
      <td><select id="movie" name="movieName">
      <option selected>영화선택</option>
        <option value="원더우먼">원더우먼</option>
        <option value="겟 아웃">겟 아웃</option>
        <option value="캐리비안의 해적: 죽은자는 말이 없다">캐리비안의 해적: 죽은자는 말이 없다</option>
      <option value="대립군">대립군</option>
      <option value="노무현입니다">노무현입니다</option>
      <option value="불한당: 나쁜 놈들의 세상">불한당: 나쁜 놈들의 세상</option>
      <option value="7번쨰 내가 죽던 날">7번쨰 내가 죽던 날</option>
      <option value="미이라">미이라</option>
      <option value="너와 100번쨰 사랑">너와 100번쨰 사랑</option>
      <option value="보스 베이비">보스 베이비</option>
      </select></td></tr>
      
      <tr>
      <td><input type="text" class="mybox1" value="상영시간 " /> </td>
     <td> <select id="time" name="movieTime">
      <option selected>상영시간</option>
        <option value="아침(06:00~12:00)">아침(06:00~12:00)</option>
        <option value="점심(12:00~17:00)">점심(12:00~17:00)</option>
        <option value="저녁(17:00~22:00)">저녁(17:00~22:00)</option>
        <option value="심야(22:00~06:00)">심야(22:00~06:00)</option>
      </select></td> </tr>
      
      <tr>
      <td><input type="text" class="mybox1" value="상영관 " /> </td>
      <td><select id="place" name="moviePlace">
      <option selected>상영관</option>
        <option value="4D 영화관">4D 영화관</option>
        <option value="패밀리 영화관">패밀리 영화관</option>
        <option value="스페셜 영화관">스페셜 영화관</option>
      </select></td></tr>
      
      

      <tr>
      <td><input type="text" class="mybox1" value="인원 수" /> </td>
      <td><input class="mybox" type="number" name="moviePerson" value="0"></td></tr>
      <tr>
      <td><input type="text" class="mybox1" value="자리선택" /> </td>
      <td><input class="mybox" type="text" name="movieSeat" value="<%=seat%>" onclick="open('seat.jsp','','resizable=no ')" /></td>
      
      <p>
      <tr>
      <td><input type="text" class="mybox1" value="예매가격" /> </td>
      <td><label>1인당 가격</label><input class="mybox" type="text" value="8000" name="moviePrice"/></td></tr>
      </table>
      
        <input type="submit" value="예매하기" >
      
      
      
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