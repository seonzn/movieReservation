<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<body>
<script type="text/javascript"> /*자바스크립트 시작*/
function add() { /*add함수 정의*/
	var num1 = parseInt(document.getElementById("num1").value, 10); /*ID값 num1에 수량의 값을 줌*/
	var num2 = parseInt(document.getElementById("num2").value, 10); /*ID값 num2에 수량의 값을 줌*/
	var num3 = parseInt(document.getElementById("num3").value, 10); /*ID값 num3에 수량의 값을 줌*/
	var num4 = parseInt(document.getElementById("num4").value, 10); /*ID값 num4에 수량의 값을 줌*/
	var num5 = parseInt(document.getElementById("num5").value, 10); /*ID값 num5에 수량의 값을 줌*/

	var sal1 = parseInt(document.getElementById("sal1").value,10); /*ID값 sale1에 합계의 값을 줌*/
	var sal2 = parseInt(document.getElementById("sal2").value,10); /*ID값 sale2에 합계의 값을 줌*/
	var sal3 = parseInt(document.getElementById("sal3").value,10); /*ID값 sale3에 합계의 값을 줌*/
	var sal4 = parseInt(document.getElementById("sal4").value,10); /*ID값 sale4에 합계의 값을 줌*/
	var sal5 = parseInt(document.getElementById("sal5").value,10); /*ID값 sale5에 합계의 값을 줌*/

	var numResult = num1 + num2 + num3 + num4 + num5; /*수량합계*/
   	document.getElementById("numResult").value = numResult; /*ID값 numResult에게 수량합계의 값을줌*/
   
	var result1 = document.getElementById("result1").value = num1 * sal1; /*1번상품 수량에 따른 상품가격*/ 
	var result2 = document.getElementById("result2").value = num2 * sal2; /*2번상품 수량에 따른 상품가격*/
	var result3 = document.getElementById("result3").value = num3 * sal3; /*3번상품 수량에 따른 상품가격*/
	var result3 = document.getElementById("result4").value = num4 * sal4; /*4번상품 수량에 따른 상품가격*/
	var result3 = document.getElementById("result5").value = num5 * sal5; /*5번상품 수량에 따른 상품가격*/

	var finalResult = result1 + result2 + result3 + result4 + result5; /*수량에 따른 상품가격 총합계*/
	document.getElementById("finalResult").value = finalResult; /*ID값 finalResult에게 총합계 가격의 값을줌*/
}</script> <!-- 자바스크립트 종료 -->



<title>사이드 메뉴</title>
</head>
<body>

<div id="box">
		
		<div id="top"> <jsp:include page="top.jsp"></jsp:include> </div>
		
		<div id="left"> <jsp:include page="login.jsp"></jsp:include>  
		<div><br> <jsp:include page="ordermenu.jsp"></jsp:include></div>  
		</div>
		
		<div id="main2">
		
<script type="text/javascript"> /*자바스크립트 시작*/
function add() { /*add함수 정의*/
	var num1 = parseInt(document.getElementById("num1").value, 10); /*ID값 num1에 수량의 값을 줌*/
	var num2 = parseInt(document.getElementById("num2").value, 10); /*ID값 num2에 수량의 값을 줌*/
	var num3 = parseInt(document.getElementById("num3").value, 10); /*ID값 num3에 수량의 값을 줌*/
	var num4 = parseInt(document.getElementById("num4").value, 10); /*ID값 num4에 수량의 값을 줌*/
	var num5 = parseInt(document.getElementById("num5").value, 10); /*ID값 num5에 수량의 값을 줌*/

	var sal1 = parseInt(document.getElementById("sal1").value,10); /*ID값 sale1에 합계의 값을 줌*/
	var sal2 = parseInt(document.getElementById("sal2").value,10); /*ID값 sale2에 합계의 값을 줌*/
	var sal3 = parseInt(document.getElementById("sal3").value,10); /*ID값 sale3에 합계의 값을 줌*/
	var sal4 = parseInt(document.getElementById("sal4").value,10); /*ID값 sale4에 합계의 값을 줌*/
	var sal5 = parseInt(document.getElementById("sal5").value,10); /*ID값 sale5에 합계의 값을 줌*/

	var numResult = num1 + num2 + num3 + num4 + num5; /*수량합계*/
   	document.getElementById("numResult").value = numResult; /*ID값 numResult에게 수량합계의 값을줌*/
   
	var result1 = document.getElementById("result1").value = num1 * sal1; /*1번상품 수량에 따른 상품가격*/ 
	var result2 = document.getElementById("result2").value = num2 * sal2; /*2번상품 수량에 따른 상품가격*/
	var result3 = document.getElementById("result3").value = num3 * sal3; /*3번상품 수량에 따른 상품가격*/
	var result3 = document.getElementById("result4").value = num4 * sal4; /*4번상품 수량에 따른 상품가격*/
	var result3 = document.getElementById("result5").value = num5 * sal5; /*5번상품 수량에 따른 상품가격*/

	var finalResult = result1 + result2 + result3 + result4 + result5; /*수량에 따른 상품가격 총합계*/
	document.getElementById("finalResult").value = finalResult; /*ID값 finalResult에게 총합계 가격의 값을줌*/
}</script> <!-- 자바스크립트 종료 -->

<style type="text/css"> /*스타일 정의*/ 
input{
text-align: center;
}
</style>
<center>
<h2> 사이드메뉴</h2> 
주문서<br/>
</center>
<form action="sidemenuResult.jsp" method="post">
<table border = "1"> <!-- 테이블 생성후 값 입력 -->
<tr> 
	<th>상품명</th>                          
	<th>가격</th>                                   
	<th>수량</th>                                     
	<th>합계</th>
</tr>
<tr> 
	<td> <img src="images/콜라(중).jpg"><br><input name="productName" type="checkbox" value="콜라(중)">콜라(중)</td> 	  
	<td><input type="text" id="sal1" value="2000" size="5" >원</td> 
	<td> <input type="number" id="num1" value = "0" size="5" > </td> 		
	<td> <input type="text" id="result1" value = "0" size="5"> 원</td>
</tr>
<tr> 
	<td><img src="images/오리지널팝콘(중).jpg"><br><input name="productName" type="checkbox" value="오리지널팝콘(중)">오리지널팝콘(중)</td> 	  
	<td><input type="text" id="sal2" value="4500" size="5" >원</td> 
	<td> <input type="number" id="num2" value = "0" size="5" > </td> 		
	<td> <input type="text" id="result2" value = "0" size="5"> 원</td>
</tr>
<tr> 
	<td><img src="images/스위트콤보.jpg"><br><input name="productName" type="checkbox" value="스위트콥보">스위트콥보</td> 	  
	<td><input type="text" id="sal3" value="8500" size="5" >원</td> 
	<td> <input type="number" id="num3" value = "0" size="5" > </td> 		
	<td> <input type="text" id="result3" value = "0" size="5"> 원</td>
</tr>
<tr> 
	<td><img src="images/더블콤보.jpg"><br><input name="productName" type="checkbox" value="더블콤보">더블콤보</td>
	 <td><input type="text" id="sal4" value="10000" size="5"  >원</td> 
	 <td> <input type="number" id="num4" value = "0" size="5" > </td>
	 <td> <input type="text" id="result4" value = "0" size="5"  > 원</td>
</tr>
<tr> 
	<td><img src="images/수퍼콤보.jpg"><br><input name="productName" type="checkbox" value="수퍼콤보">수퍼콤보</td>	      
	<td><input type="text" id="sal5" value="14500" size="5" >원</td>  		
	<td> <input type="number" id="num5" value = "0" size="5" > </td> 		
	<td> <input type="text" id="result5" value = "0" size="5" > 원</td>
</tr>
<tr>
	<td>합계</td>	      
	<td> </td>
	<td><input type="text" id ="numResult" name="productEa" value = "0" size="5" style="width: 155px";></td>  		
	<td><input type="text" id="finalResult" name="productPrice" value = "0" size="5" > 원</td>
</tr>

</table>
<input type="submit" value="예매하기" >
<button type="button" id="addBtn" onclick="add()">합계계산</button> <!-- 버튼 실행시 add함수 호출 -->
<button type="reset" id="resetBtn"> 초기화</button> <!-- 버튼 실행시 입력값 초기화 -->
<br/>

</form>

		</div>
		
		
		<div id="bottom"><jsp:include page="bottom.jsp"></jsp:include>  </div>
	</div>

</body>
</html>