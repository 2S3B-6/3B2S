<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</style>
</head>
<body>
 
         <div class="full-slider">
            <div id="carousel-example-generic" class="carousel slide">
               <!-- Indicators -->
               <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2"></li>
               </ol>
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
               <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
               <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
               <span class="sr-only">Previous</span>
               </a>
               <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
               <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
               <span class="sr-only">Next</span>
               </a>
            </div>
            <!-- /.carousel -->
            <div class="news">
               <div class="container">
                  <div class="heading-slider">
                     <p class="headline"><i class="fa fa-star" aria-hidden="true"></i> Top Headlines :</p>
                     <!--made by vipul mirajkar thevipulm.appspot.com-->
                     <h1>
                     <a href="" class="typewrite" data-period="2000" data-type='[ "Contrary to popular belief, Lorem Ipsum is not simply random text.", "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."]'>
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
      <div class="matchs-info">
         <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="row">
               <div class="full">
                  <div class="matchs-vs">
                     <div class="vs-team">
                        <div class="team-btw-match">
                           <ul>
                              <li>
                                 <img src="../images/img-03.png" alt="">
                                 <span>Footbal Team</span>
                              </li>
                              <li class="vs"><span>vs</span></li>
                              <li>
                                 <img src="../images/img-04.png" alt="">
                                 <span>Super Team Club</span>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div> 
               </div>
            </div>
         </div>
         <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="row">
               <div class="full">
                  <div class="right-match-time">
                     <h2>Next Match</h2>
                     <ul id="countdown-1" class="countdown">
                        <li><span class="days">10 </span>Day </li>
                        <li><span class="hours">5 </span>Hours </li>
                        <li><span class="minutes">25 </span>Minutes </li>
                        <li><span class="seconds">10 </span>Seconds </li>
                     </ul>
                     <span>12/02/2017 /19:00pm</span>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <section id="contant" class="contant">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-sm-4 col-xs-12">
                  <aside id="sidebar" class="left-bar">
                     <div class="banner-sidebar">
                        <img class="img-responsive" src="../images/img-05.jpg" alt="#" />
                        <h3>Lorem Ipsum is simply dummy text..</h3>
                     </div>
                  </aside>
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
                  <div class="content-widget top-story" style="background: url(images/top-story-bg.jpg);">
                     <div class="top-stroy-header">
                        <h2>Top Soccer Headlines Story <a href="#" class="fa fa-fa fa-angle-right"></a></h2>
                        <span class="date">July 05, 2017</span>
                        <h2>Other Headlines</h2>
                     </div>
                     <ul class="other-stroies">
                        <li><a href="#">Wenger Vardy won't start</a></li>
                        <li><a href="#">Evans: Vardy just</a></li>
                        <li><a href="#">Pires and Murray </a></li>
                        <li><a href="#">Okazaki backing</a></li>
                        <li><a href="#">Wolfsburg's Rodriguez</a></li>
                        <li><a href="#">Jamie Vardy compared</a></li>
                        <li><a href="#">Arsenal target Mkhitaryan</a></li>
                        <li><a href="#">Messi wins libel case.</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-lg-8 col-sm-8 col-xs-12">
                  <div class="news-post-holder">
                     <div class="news-post-widget">
                        <img class="img-responsive" src="../images/img-01_002.jpg" alt="">
                        <div class="news-post-detail">
                           <span class="date">20 march 2016</span>
                           <h2><a href="blog-detail.html">At vero eos et accusamus et iusto odio dignissimos ducimus</a></h2>
                           <p>Just hours after that his grandma had died, Angel Di Maria imagined how she might react if he didn't play</p>
                        </div>
                     </div>
                     <div class="news-post-widget">
                        <img class="img-responsive" src="../images/img-02_003.jpg" alt="">
                        <div class="news-post-detail">
                           <span class="date">20 march 2016</span>
                           <h2><a href="blog-detail.html">At vero eos et accusamus et iusto odio dignissimos ducimus</a></h2>
                           <p>Just hours after that his grandma had died, Angel Di Maria imagined how she might react if he didn't play</p>
                        </div>
                     </div>
                  </div>
                  <div class="news-post-holder">
                     <div class="news-post-widget">
                        <img class="img-responsive" src="../images/img-03_003.jpg" alt="">
                        <div class="news-post-detail">
                           <span class="date">20 march 2016</span>
                           <h2><a href="blog-detail.html">At vero eos et accusamus et iusto odio dignissimos ducimus</a></h2>
                           <p>Just hours after that his grandma had died, Angel Di Maria imagined how she might react if he didn't play</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section>
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="full">
                     <div class="main-heading sytle-2">
                        <h2>Video</h2>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium<br>doloremque laudantium, totam rem aperiam</p>
                     </div>
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
                  <h2>Meet Your Team</h2>
                  <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium<br>doloremque laudantium, totam rem aperiam</p>
               </div>
            </div>
            <div id="team-slider">
               <div class="container">
                  <div class="col-md-3">
                     <div class="team-column style-2">
                        <img src="../images/img-1-1.jpg" alt="">
                        <div class="player-name">
                           <div class="desination-2">Defender</div>
                           <h5>Charles Wheeler</h5>
                           <span class="player-number">12</span>
                        </div>
                        <div class="overlay">
                           <div class="team-detail-hover position-center-x">
                              <p>Lacus vulputate torquent mollis venenatis quisque suspendisse fermentum primis,</p>
                              <ul class="social-icons style-4 style-5">
                                 <li><a class="facebook" href="#" tabindex="0"><i class="fa fa-facebook"></i></a></li>
                                 <li><a class="twitter" href="#" tabindex="0"><i class="fa fa-twitter"></i></a></li>
                                 <li><a class="youtube" href="#" tabindex="0"><i class="fa fa-youtube-play"></i></a></li>
                                 <li><a class="pinterest" href="#" tabindex="0"><i class="fa fa-pinterest-p"></i></a></li>
                              </ul>
                              <a class="btn blue-btn" href=" /soccer/team-detail.html" tabindex="0">View Detail</a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-3">
                     <div class="team-column style-2">
                        <img src="../images/img-1-2.jpg" alt="">
                        <div class="player-name">
                           <div class="desination-2">Defender</div>
                           <h5>Charles Wheeler</h5>
                           <span class="player-number">12</span>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-3">
                     <div class="team-column style-2">
                        <img src="../images/img-1-3.jpg" alt="">
                        <div class="player-name">
                           <div class="desination-2">Defender</div>
                           <h5>Charles Wheeler</h5>
                           <span class="player-number">12</span>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-3">
                     <div class="team-column style-2">
                        <img src="../images/img-1-4.jpg" alt="">
                        <div class="player-name">
                           <div class="desination-2">Defender</div>
                           <h5>Charles Wheeler</h5>
                           <span class="player-number">12</span>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</body>
</html>