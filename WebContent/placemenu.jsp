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
   <li class='active'><a href='#'><span>영화관 정보</span></a></li>
   <li class='has-sub'><a href='#'><span>상영관</span></a>
      <ul>
         <li><a href='place.jsp'><span>4D 영화관</span></a></li>
         <li class='last'><a href='place02.jsp'><span>패밀리 영화관</span></a></li>
         <li><a href='place01.jsp'><span>스페셜 영화관</span></a></li>
         </ul>
   </li>
   <li class='last'><a href='time.jsp'><span>상영시간표</span></a>
      
   </li>
   <li class='last'><a href='come.jsp'><span>찾아오시는길</span></a></li>
</ul>
</div>

</body>
<html>