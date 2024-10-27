<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
<script>
$(function(){
	  
    var embed = $('.youtube');
    $('.video').append(embed);
  
    /* click 'PLAY'  button */
    $('.pop_open').click( function() {
      // show popup background
      $('.gray_mask').fadeIn(200);
      // show popup 
      $('#popup').fadeIn(300);
      // append youtube iframe on popup
      $('.video').append(embed);
    });
 
    /* click 'CLOSE' button */
    $('.gray_mask, .pop_close').click( function() {
      // hide popup background
      $('#popup').hide();
      // $('.youtube')[0].contentWindow.contentWindow.postMessage('{"event":"command","func":"pauseVideo","args":""}','*');
      // hide popup 
      $('.gray_mask').hide();
      // empty youtube iframe on popup
      $('.video').empty();
    });

  /* click 'popu background' */
  $('.gray_mask, .pop_close').click( function() {
    // hide popup background
    $('#popup').hide();
    // hide popup 
    $('.gray_mask').hide();
    // empty youtube iframe on popup
    $('.video').empty(); 
  }); 
  
});
</script>
<style>
.gray_mask{
  display:none;
  position:absolute;
  top:0;
  left:0;
  width:100%;
  height:100%;
  background:rgba(0,0,0,0.7);
}
#popup{
  display:none;
  position:relative;
}
.pop_close{
  position:absolute;
  right:0;
  top:0;
}
.youtube{
  position:absolute;
  left:50%;
  margin-left:-280px;
}

</style>
</head>
<body>
<!-- 제목바 -->
<section>
  <div class="news-page-banner">
      <div class="container">
      </div>
   </div>
   <div class="inner-information-text">
      <div class="container">
         <h3>Goods</h3>
         <ul class="breadcrumb">
            <li><a href="../main/main.do">Home</a></li>
            <li class="active"><a href="../news/list.do">Goods</a></li>
         </ul>
      </div>
   </div>
</section>

<section class="single_blog_area section_padding_80" >
	<div class="container ">
	    <div class="row">
	            <div class="row no-gutters text-center">
	            
<a class="pop_open btn" href="#">PLAY</a>

<div class="gray_mask"></div> 

<div id="popup">
    <div class="youtube_box">
      <iframe id="youbube" type="text/html" width="720" height="405"
src="https://www.youtube.com/embed/${hvo.video }"
frameborder="0" allowfullscreen></iframe>
    </div>
</div>
  
	           </div>
	           <div class="">
	           		<!-- <button class="" onclick="javascript:history.back()">목록</button> -->		<!-- historyback사용한 목록가기 -->
	           		<button class="" onclick="">목록</button>
	           </div>
        </div>
    </div>
</section>

</body>
</html>