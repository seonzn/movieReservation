<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles1.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script>
   ( function( $ ) {
	   $( document ).ready(function() {
	   $('#cssmenu1 > ul > li > a').click(function() {
	     $('#cssmenu1 li').removeClass('active');
	     $(this).closest('li').addClass('active');	
	     var checkElement = $(this).next();
	     if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
	       $(this).closest('li').removeClass('active');
	       checkElement.slideUp('normal');
	     }
	     if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
	       $('#cssmenu1 ul ul:visible').slideUp('normal');
	       checkElement.slideDown('normal');
	     }
	     if($(this).closest('li').find('ul').children().length == 0) {
	       return true;
	     } else {
	       return false;	
	     }		
	   });
	   });
	   } )( jQuery );

   </script>
   <title>왼쪽 메뉴</title>
</head>
<body>

<div id='cssmenu1'>
<ul>
   <li class='active'><a href='#'><span>영화예매</span></a></li>
   
   <li class='last'><a href='movie_order.jsp'><span><center>영화 예매하기</center></span></a></li>
   <li class='last'><a href='sidemenu.jsp'><span><center>사이드 메뉴</center></span></a></li>
</ul>
</div>

</body>
<html>