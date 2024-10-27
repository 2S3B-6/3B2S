<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#bannerVideo {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1; /* 동영상이 다른 요소 아래로 위치하게 함 */
    object-fit: cover; /* 영상이 비율에 맞게 꽉 차도록 설정 */
}

/* .carousel-inner {
    position: relative;
    margin-top: 160px;  헤더 높이만큼 여백을 줘서 비디오가 헤더 아래에 위치 
} */
.logo-schedule{
	width: 50px;
	height: 50px;
}
.logo-image{
	width: 30px;
	height: 30px;
}
.side-title {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.more {
    display: inline-block;
    font-size: 13px;
    color: #007bff;
    background-color: rgba(255, 255, 255, 0.8);
    text-decoration: none;
    transition: background-color 0.3s, border-color 0.3s;
}
.more:hover{
    background-color: rgba(0, 123, 255, 0.2);
}
#a{
	white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    width: 327px;
}
.image-player{
	width: 130px;
	height: 173px;
}
.pname{
	font-family: '휴먼모음T';
	font-size: 31px;
}
.titles{
	font-family: '휴먼모음T';
	font-size: 20px;	
}
.content-text {
        display: -webkit-box;
        -webkit-line-clamp: 2; /* 두 줄로 제한 */
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
}
.matchs-info:hover{
	cursor: pointer;
}
</style>
</head>
<body>
 
         <div class="full-slider">
            <div id="carousel-example-generic" class="carousel slide">
               <!-- Indicators -->
               <!-- Wrapper for slides -->
 <div class="carousel-inner" role="listbox">
    <!-- First slide -->
    <div class="item active deepskyblue" data-ride="carousel" data-interval="5000">
        <!-- 동영상 배경을 위해 video 태그 사용 -->
        <video id="bannerVideo" width="100%" height="100%" autoplay muted loop>
            <source src="../images/rolling_video.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        
        <div class="carousel-caption">
            <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12"></div>
            <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                <div class="slider-contant" data-animation="animated fadeInRight">
                </div>
            </div>
        </div>
    </div>
</div>

                  <!-- /.item -->
                  <!-- Second slide -->
                  <div class="item skyblue" data-ride="carousel" data-interval="5000">
                     <div class="carousel-caption">
                        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12"></div>
                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                           <div class="slider-contant" data-animation="animated fadeInRight">
                              <h3>If you Don’t Practice<br>You <span class="color-yellow">Don’t Derserve</span><br>to win!</h3>
                              <p>You can make a case for several potential winners of<br>the expanded European Championships.</p>
                              <button class="btn btn-primary btn-lg">Button</button>
                           </div> 
                        </div>
                     </div>
                  </div>
                  <!-- /.item -->
                  <!-- Third slide --> 
                  <div class="item darkerskyblue" data-ride="carousel" data-interval="5000">
                     <div class="carousel-caption">
                        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12"></div>
                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                           <div class="slider-contant" data-animation="animated fadeInRight">
                              <h3>If you Don’t Practice<br>You <span class="color-yellow">Don’t Derserve</span><br>to win!</h3>
                              <p>You can make a case for several potential winners of<br>the expanded European Championships.</p>
                              <button class="btn btn-primary btn-lg">Button</button>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- /.item -->
               </div>
               <!-- /.carousel-inner -->
               <!-- Controls -->
            </div>
            <!-- /.carousel -->
            <div class="news">
               <div class="container">
                  <div class="heading-slider">
                     <p class="headline"><i class="fa fa-star" aria-hidden="true"></i> Top Headlines :</p>
                     <!--made by vipul mirajkar thevipulm.appspot.com-->
                     <h1>
                     <a href="" class="typewrite" data-period="2000" data-type='[ "100%에 빠르게 접근중 오타니 50-50 확률...47홈런-48도루 개인최다, 亞 타이, LAD 역대 최다 -3"]'>
                     <span class="wrap"></span>
                     </a>
                     </h1>	   
                     <span class="wrap"></span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <div class="matchs-info" onclick="javascript:location.href='../ticket/ticketchoice.do'">
         <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="row">
               <div class="full">
                  <div class="matchs-vs" >
                     <div class="vs-team" >
                        <div class="team-btw-match" >
                           <ul>
                             <li>
                                 <img src="../images/logo/kia.png" style="width:127px;">
                                 <span>KIA 타이거스</span>
                              </li>
                              <li class="vs"><span>vs</span></li>
                              <li>
                                 <img src="../images/logo/samsung.png" style="width:127px;">
                                 <span>삼성라이온즈</span>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div> 
               </div>
            </div>
         </div>
         <div class="col-md-6 col-sm-6 col-xs-12" >
            <div class="row">
               <div class="full">
                  <div class="right-match-time">
                     <h2>한국시리즈 1 차전</h2>
                     <ul id="countdown-1" class="countdown">
                        <li><span class="days">2024 </span>/ </li>
                        <li><span class="hours">10 </span>/ </li>
                        <li><span class="minutes">21 </span>/ </li>
                        <li><span class="seconds">18:00pm </span> </li>
                     </ul>
                     <span>예매하기</span>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <section id="contant" class="contant">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-sm-4 col-xs-12">
               	<h4 class="side-title">공지 사항<a href="../notice/list.do" class="more">더보기</a></h4>	
                  <aside id="sidebar" class="left-bar">
                  <c:forEach var="nvo" items="${nList }" varStatus="s">
                            <c:if test="${s.index<2}">
                     
                        <div class="team-btw-match" id="a">
		                           <ul>
		                              <li><a href="../notice/detail.do?no=${nvo.no }">
		                              &nbsp;&nbsp;&nbsp;>&nbsp;${nvo.subject }
		                              </a>
		                              </li>
		                          </ul>
                        		</div>
                     
                     </c:if></c:forEach>
                     
                  </aside>
                  <div style="height:30px"></div>
                  <h4 class="side-title">9월 28일 일정&결과<a href="../schedule/schedule.do" class="more">더보기</a></h4>
                  <aside id="sidebar" class="left-bar">
                     <div class="feature-matchs">
                     	<c:forEach var="svo" items="${sList }" varStatus="s">
                            <c:if test="${s.index<5}">
		                        <div class="team-btw-match">
		                           <ul>
		                              <li>
		                                 <img src="${svo.awayimage }" class="logo-schedule">
		                                 <span>${svo.away }</span>
		                              </li>
		                              <li class="vs"><span style="font-size:20px">${svo.awayscore } - ${svo.homescore }</span>
		                              </li>
		                              <li>
		                                 <img src="${svo.homeimage }" class="logo-schedule">
		                                 <span>${svo.home }</span>
		                              </li>
		                          </ul>
                        		</div>
                              </c:if></c:forEach>
                     </div>
                  </aside>
                  <h4 class="side-title">KBO 순위<a href="../team/ranking.do" class="more">더보기</a></h4>
                  <aside id="sidebar" class="left-bar">
                     <div class="feature-matchs">
                        <table class="table table-bordered table-hover">
                           <thead>
                              <tr>
                                 <th class="text-center">#</th>
                                 <th class="text-center">팀</th>
                                 <th class="text-center">승</th>
                                 <th class="text-center">무</th>
                                 <th class="text-center">패</th>
                                 <th class="text-center">승차</th>
                                 <th class="text-center">승률</th>
                              </tr>
                           </thead>
                           <tbody>
                           <c:forEach var="rvo" items="${rList }" varStatus="r">
                            <c:if test="${r.index<10}">
                              <tr>
                                 <td class="text-center">${rvo.ranking }</td>
                                 <td><img src="${rvo.logo }" class="logo-image">${rvo.team }</td>
                                 <td class="text-center">${rvo.win }</td>
                                 <td class="text-center">${rvo.draw }</td>
                                 <td class="text-center">${rvo.lose }</td>
                                 <td>${rvo.cha }</td>
                                 <td>${rvo.winper }</td>
                              </tr>
                             </c:if>
                           </c:forEach>
                           </tbody>
                        </table>
                     </div>
                  </aside>
                  <div class="content-widget top-story">
	                 <div class="top-stroy-header">
	                    <h2>실시간 인기 뉴스 <a href="#" class="fa fa-fa fa-angle-right"></a></h2>
	                    <span class="date">
					        <%
					            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					            String today = sdf.format(new Date());
					            out.print(today);
					        %>
					    </span>
	                 </div>
	                 
	                 <ul class="other-stroies">
	                   <c:forEach var="vo" items="${nsList2 }">
	                     <li>
	                       <a href="../news/detail.do?nno=+${vo.nno }">
	                         <c:choose>
	                           <c:when test="${fn:length(vo.title)>23 }">
	                            ${fn:substring(vo.title,0,23)}...
	                           </c:when>
	                         </c:choose>
	                       </a>
	                     </li>
	                   </c:forEach>
	                 </ul>
	              </div>
               </div>
               <div class="col-lg-8 col-sm-8 col-xs-12">
                  <div class="news-post-holder">
                    <c:forEach var="nsvo" items="${nsList }" varStatus="ns">
                     <c:if test="${ns.index<3}">
                     <div class="news-post-widget">
                        <a href="../news/detail.do?nno=+${nsvo.nno }"><img class="img-responsive" src="${nsvo.poster}" alt=""></a>
                        <div class="news-post-detail">
                           <span class="date">${nsvo.author }</span>
                           <h2><a href="../news/detail.do?nno=+${nsvo.nno }">${nsvo.title }</a></h2>
                           <p class="content-text">${nsvo.content}</p>
                        </div>
                     </div>
                     </c:if>
                    </c:forEach>
                 </div>
              </div>
           </div>
        </div>
      </section>
         
      <section class="video_section_main theme-padding middle-bg vedio">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="full">
                  <div class="main-heading sytle-2">
	                    <h2>하이라이트</h2>
	                    <p>[KBO 하이라이트] 10.25 KIA vs 삼성 | KS 3차전 | 2024 KBO 포스트시즌 | 야구</p>
                     </div>
                     <div class="match_vedio text-center">
                        <iframe id="ytplayer" type="text/html" width="640" height="360"
						  src="https://www.youtube.com/embed?listType=playlist&list=PLuY-NTS_5IpzwH3FfskfFOrnui5O5NlkC"
						  frameborder="0">
						</iframe>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <div class="team-holder theme-padding">
         <div class="container">
            <div class="main-heading-holder">
               <div class="main-heading sytle-2">
                  <h2>Meet Your Player</h2>
                  <p>KBO 선수들의 기록을 지금 확인해보세요!</p>
               </div>
            </div>
            <section class="contant main-heading team">
            <div id="team-slider">
            
               <div class="row">
	         	<div class="container">
	         	<c:forEach var="pvo" items="${pList }">
	               <div class="col-md-3 column">
	                  <div class="card">
	                     <img class="image-player" src="https://statiz.sporki.com${pvo.image }">
	                     <div style="height:10px"></div>
	                     <div>
	                        <p class="pname">${fn:substring(pvo.name, 0, 3)}</p>
	                        <div style="height:17px"></div>
	                        <p class="titles">${pvo.team }</p>
	                        <p class="titles">${pvo.position }</p>
	                        <p>
	                        	<div class="center">
	                            	<a class="button" href="../player/batter_detail.do?bno=${pvo.bno }">자세히 보기</a>
	                        	</div>
	                        </p>
	                     </div>
	                  </div>
	               </div>
	           </c:forEach>
	       </div>
	   </div>
              
            </div>
             </section>
         </div>
      </div>
</body>
</html>