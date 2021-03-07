<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>이미지 스크롤</title>
		<style type="text/css">
			a:link{color:#111111; text-decoration:none;}
			a:visited{color:#111111; text-decoration:none;}
			a:hover{color:#111111; text-decoration:underline;}
			a:link{color:#111111; text-decoration:none;}
			img{border:0px;}

			.select_direction{cursor:hand}
			ul, li {list-style:none; padding:0; margin:0;}

			.slider_td{padding-top:16px;}
			.slider_ul li {width:180x; height:240px; padding-right:9px; float:left; white-space: nowrap; overflow:hidden; }
			.slider_ul li img {vertical-align:top; border:1px solid #eeeeee; width:142; height:195;white-space: nowrap;}
			.slider_ul li h1 {font-family:"돋움",tahoma,verdana; padding:0; margin:0; width:142px; height:0px; 
							line-height:15px; overflow:visible; text-align:center; font-size:11px; font-weight:normal; 
							padding-top:2px;white-space: nowrap; border:0px solid white;}
		</style>
		
		<script>
			var my_config = [];
			with (my_config) {
 			my_config.speed = "40";
 			my_config.scroll = 1;
 			my_config.width = "700";
 			my_config.height = "230";
 			my_config.direction = "left";
 			my_config.banners;
 			my_config.slider;
 			my_config.slider_1;
 			my_config.slider_2;
 			my_config.timer;
			}
			function autoScroll(type){
 				my_config.direction = type;
 				this.items = [];
 				this.add_banner = function(image,link,title,target){
  					var newItem  = {};
  					newItem.image = image;
  					newItem.link = link;
  					newItem.title = title;
  					newItem.target = target;
  					this.items[this.items.length] = newItem;
 				}
			 	this.play = function(){
  					my_config.banners = this.items;
  					scroll_html();
  					with (my_config) {
   						slider=document.getElementById("slider_box");
   						slider_1=document.getElementById("slider_box_1");
   						slider_2=document.getElementById("slider_box_2");
   						slider_2.innerHTML=slider_1.innerHTML;
   						timer=setInterval(do_timer,speed);
  					}
 				}
			}

			function scroll_html(){
 				var str = "", tmp = "", b = "", c ="", d = "";
 				for(var i=0;i<my_config.banners.length;i++){
   					var a = my_config.banners[i]
   					str += "<li><a href='"+a.link+"' target='"+a.target+"'><img src='"+a.image+
   							"' width=142 height=180 title='"+a.title+"'></a><h1><a href='"+a.link+"' >"+a.title+
   							"</a></h1></li>";
 				}
 				if (my_config.direction == "left" || my_config.direction == "right"){
  					b = "<div id=slider_scroller style='float: left; width: 800%'>";
  					c = " style='float: left'";
  					d = "</div>";
 				}
 				tmp += "<div id=slider_box  onmouseover='do_stop()' onmouseout='do_move()' style='overflow:hidden; width:"+
 								my_config.width+"px; height:"+my_config.height+"px'>";
 				tmp += b + "<div id=slider_box_1"+c+">" + str;
 				tmp += "</div><div id=slider_box_2"+c+">"+d+"</div></div>";
 				document.getElementById("slider_show").innerHTML = tmp;
			}

			function do_left() {my_config.direction='left';}
			function do_right() {my_config.direction='right';}
			function do_stop() {my_config.scroll=0;}
			function do_move() {my_config.scroll=1;}

			function do_timer(){
 				with(my_config){ 
  					if (scroll) {
   						if (direction == "top"){
    						if (slider_2.offsetTop-slider.scrollTop<=0){ 
        						slider.scrollTop-=slider_1.offsetHeight; 
        					}else {
            					slider.scrollTop++;
            				}
   						} else if(direction == "down"){
    						if (slider_1.offsetTop-slider.scrollTop>=0) {
        						slider.scrollTop+=slider_2.offsetHeight;
    						}else {
        						slider.scrollTop--;
        					}
   						} else if (direction == "left"){
    						if (slider_2.offsetWidth-slider.scrollLeft<=0){
        						 slider.scrollLeft-=slider_1.offsetWidth;
    						}else {
        						slider.scrollLeft++;
        					}
   						} else if (direction == "right"){
    						if (slider.scrollLeft<=0) {
        						slider.scrollLeft+=slider_2.offsetWidth;
    						}else {
        						slider.scrollLeft--;
        					}
   						}
  					}
 				}
			}

			function play_game (type){
 				if (my_config.timer){ 
 	 				clearInterval(my_config.timer);
 	 			}
 				var direction = type;
 				var obj = new autoScroll(type);
 				obj.add_banner("./movie_img/movie_image01.jpg","http://movie.naver.com/movie/bi/mi/basic.nhn?code=125473","원더우먼","_blank");
 				obj.add_banner("./movie_img/movie_image02.jpg","http://movie.naver.com/movie/bi/mi/basic.nhn?code=82473","캐리비안해적 : 죽은자는 말이없다","_blank");
 				obj.add_banner("./movie_img/movie_image03.jpg","http://movie.naver.com/movie/bi/mi/basic.nhn?code=149221","대립군","_blank");
 				obj.add_banner("./movie_img/movie_image04.jpg","http://movie.naver.com/movie/bi/mi/basic.nhn?code=162173","노무현입니다","_blank");
 				obj.add_banner("./movie_img/movie_image05.jpg","http://movie.naver.com/movie/bi/mi/basic.nhn?code=156083","겟아웃","_blank");
 				obj.add_banner("./movie_img/movie_image06.jpg","http://movie.naver.com/movie/bi/mi/basic.nhn?code=154112","불한당","_blank");
 				obj.add_banner("./movie_img/movie_image07.jpg","http://movie.naver.com/movie/bi/mi/basic.nhn?code=144988","7번째 내가 죽던날","_blank");
 				obj.add_banner("./movie_img/movie_image08.jpg","http://movie.naver.com/movie/bi/mi/basic.nhn?code=120160","미이라","_blank");
 				obj.add_banner("./movie_img/movie_image09.jpg","http://movie.naver.com/movie/bi/mi/basic.nhn?code=156417","너와 100번째 첫사랑","_blank");
 				obj.add_banner("./movie_img/movie_image10.jpg","http://movie.naver.com/movie/bi/mi/basic.nhn?code=129094","보스베이비","_blank");
 				obj.play();
			}
		</script>
	</head>
	<body LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>
		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
 				<td width="20" class="select_direction" onclick="do_left();return false;" align=right>◁</td>
 				<td class="slider_td" style="background-color:#ffffff">
  					<ul class="slider_ul" id="slider_show"></ul>
 				</td>
 				<td width="20" class="select_direction" onclick="do_right();return false;">▷</td>
			</tr>
		</table>
		<script>
			play_game("left");
		</script>
	</body>
</html>

