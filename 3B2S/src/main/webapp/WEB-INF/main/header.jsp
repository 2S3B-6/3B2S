<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!-- Mobile Metas -->
   <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
   <!-- Site Metas -->
   <title>2S3B</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- Site Icons -->
   <link rel="stylesheet" href="../css/font-awesome.min.css">
   <link rel="stylesheet" href="../css/font-awesome.css">
   
   <link rel="shortcut icon" href="" type="image/x-icon" />
   <link rel="apple-touch-icon" href="">
   <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="../css/bootstrap.min.css">
   <!-- Site CSS -->
   <link rel="stylesheet" href="../css/style.css">
   <!-- Colors CSS -->
   <link rel="stylesheet" href="../css/colors.css">
   <!-- ALL VERSION CSS -->	
   <link rel="stylesheet" href="../css/versions.css">
   <!-- Responsive CSS -->
   <link rel="stylesheet" href="../css/responsive.css">
   <!-- Custom CSS -->
   <link rel="stylesheet" href="../css/custom.css">
   <!-- font family -->
   <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
   <!-- end font family -->
   <link rel="stylesheet" href="../css/3dslider.css" />
   
   <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
   <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
   <script src="../js/3dslider.js"></script>
   <script src="../js/all.js"></script>
      <!-- ALL PLUGINS -->
      <script src="../js/custom.js"></script>

<meta charset="UTF-8">

<!-- 번역 스크립트 등 -->
<!-- 부분 번역금지 -->
<meta name="google" content="notranslate">
<!--  -->      
<script>    
$(document).ready(function(){        
	$(".trans>a").click(function(){
		$(this).next("div").toggleClass("languageselect");        
	});    
});
</script>
<!-- 번역 스크립트 -->
<script src="https://translate.google.com/translate_ax	/element.js?cb=googleTranslateElementInit"></script>
<script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<script type="text/javascript">	
	/* 구글 번역 초기화 */
	function googleTranslateElementInit() {new google.translate.TranslateElement({pageLanguage: 'ko', includedLanguages : 'ko,en,zh-CN,ja', autoDisplay: false, layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL}, 'google_translate_element');}
</script>

<style>
	.trans a{cursor:pointer;}
	.trans .languageselect{display:none;}
	
/* 번역기이미지 */
#transimgs{
height: 45px;
width: 60px;
}
/* 번역기 툴바 제거 */
	.VIpgJd-ZVi9od-ORHb-OEVmcd {
		display: none; // add !important if required 
  	}
</style>

<title>2S3B</title>
</head>
  <body class="game_info" data-spy="scroll" data-target=".header">
      <!-- LOADER -->
      <div id="preloader">
         <img class="preloader" src="../images/loading-img.gif" alt="">
      </div>
      <!-- END LOADER -->
      <section id="top">
         <header>
            <div class="container" width="2500px;">
               <div class="header-top">
                  <div class="row">
                     <div class="col-md-6">
                        <div class="full">
                           <div class="logo">
                              <a href="../main/main.do"><img src="../images/logo.png" alt="#" /></a>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="right_top_section">
                           <!-- social icon -->
                           <ul class="social-icons pull-left">
                              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                              <li><a class="youtube" href="#"><i class="fa fa-youtube-play"></i></a></li>
                              <li><a class="pinterest" href="#"><i class="fa fa-pinterest-p"></i></a></li>
                           </ul>
                           <!-- end social icon -->
                           <!-- button section -->
                           <ul class="login">
                              <li class="login-modal">
                                 <a href="../member/login.do" class="login"><i class="fa fa-lock"></i>로그인</a>
                              </li>
                              <li>
                                 <div class="cart-option">
                                    <a href="../member/join.do"><i class="fa fa-user-plus"></i>회원가입</a>
                                 </div>
                              </li>
                           </ul>
                           <!-- start translation -->
                           <ul class="">
                              <li class="trans text-right">
                              		<!-- 번역기능 추가 -->
                              			<a href="#"><img src="#" alt="번역기"></a>
                              			<div class="languageselect translation-links">
                              				<a href="javascript:void(0)" class="Korean" data-lang="ko"><img src="../images/flag_korea.png" class="한국어" id ="transimgs" alt="한국어" data-lang="ko"></a>
                              				<a href="javascript:void(0)" class="English" data-lang="en"><img src="../images/flag_america.png" class="영어" id ="transimgs" alt="English" data-lang="en"></a>
                              				<a href="javascript:void(0)" class="Chinese" data-lang="zh-CN"><img src="../images/flag_china.png" class="중국어" id ="transimgs" alt="中国語" data-lang="zh-CN"></a>
                              				<a href="javascript:void(0)" class="Japanese" data-lang="ja"><img src="../images/flag_japan.png" class="일본어" id ="transimgs" alt="日本語" data-lang="ja"></a>
                              			</div>
                              													
                              </li>
                              </ul>
								<div class="text-center" style="text-align: center">
									<div id="google_translate_element"></div>
								</div>
                           <!-- end translation -->                           
                           <!-- end button section -->
                        </div>
                     </div>
                  </div>
               </div>
               <div class="header-bottom">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="full">
                           <div class="main-menu-section">
                              <div class="menu">
                                 <nav class="navbar navbar-inverse">
                                    <div class="navbar-header">
                                       <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
                                       <span class="sr-only">Toggle navigation</span>
                                       <span class="icon-bar"></span>
                                       <span class="icon-bar"></span>
                                       <span class="icon-bar"></span>
                                       </button>
                                       <a class="navbar-brand" href="#">Menu</a>
                                    </div>
                                    <div class="collapse navbar-collapse js-navbar-collapse">
                                       <ul class="nav navbar-nav">
                                          <li class="active"><a href="../main/main.do">Home</a></li>
                                          <li><a href="../hotel/list.do">Hotel</a></li>
                                          <li><a href="team.html">Team</a></li>
                                          <li><a href="news.html">News</a></li>
                                          <li><a href="../kbogoods/list.do">굿즈페이지</a></li>
                                          <li class="dropdown mega-dropdown">
                                             <a href="match" class="dropdown-toggle" data-toggle="dropdown">Match<span class="caret"></span></a>				
                                             <ul class="dropdown-menu mega-dropdown-menu">
                                                <li class="col-sm-8">
                                                   <ul>
                                                      <li class="dropdown-header">Men Collection</li>
                                                      <div id="menCollection" class="carousel slide" data-ride="carousel">
                                                         <div class="carousel-inner">
                                                            <div class="item active">
                                                               <div class="banner-for-match"><a href="#"><img class="img-responsive" src="../images/match-banner1.jpg" alt="#" /></a></div>
                                                            </div>
                                                            <!-- End Item -->
                                                            <div class="item">
                                                               <div class="banner-for-match"><a href="#"><img class="img-responsive" src="../images/match-banner1.jpg" alt="#" /></a></div>
                                                            </div>
                                                            <!-- End Item -->
                                                            <div class="item">
                                                               <div class="banner-for-match"><a href="#"><img class="img-responsive" src="../images/match-banner1.jpg" alt="#" /></a></div>
                                                            </div>
                                                            <!-- End Item -->                                
                                                         </div>
                                                         <!-- End Carousel Inner -->
                                                         <!-- Controls -->
                                                         <a class="left carousel-control" href="#menCollection" role="button" data-slide="prev">
                                                         <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                                         <span class="sr-only">Previous</span>
                                                         </a>
                                                         <a class="right carousel-control" href="#menCollection" role="button" data-slide="next">
                                                         <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                                         <span class="sr-only">Next</span>
                                                         </a>
                                                      </div>
                                                      <!-- /.carousel -->
                                                   </ul>
                                                </li>
                                                <li class="col-sm-4">
                                                   <ul class="menu-inner">
                                                      <li class="dropdown-header">Next Matchs</li>
                                                      <li><a href="#">Contrary vs classical</a></li>
                                                      <li><a href="#">Discovered vs undoubtable</a></li>
                                                      <li><a href="#">Contrary vs classical</a></li>
                                                      <li><a href="#">Discovered vs undoubtable</a></li>
                                                      <li><a href="#">Contrary vs classical</a></li>
                                                      <li><a href="#">Discovered vs undoubtable</a></li>
                                                      <li><a href="#">Contrary vs classical</a></li>
                                                      <li><a href="#">Discovered vs undoubtable</a></li>
                                                   </ul>
                                                </li>
                                             </ul>
                                          </li>
                                          <li><a href="blog.html">Blog</a></li>
                                          <li><a href="contact.html">contact</a></li>
                                       </ul>
                                    </div>
                                    <!-- /.nav-collapse -->
                                 </nav>
                                 <div class="search-bar">
                                    <div id="imaginary_container">
                                       <div class="input-group stylish-input-group">
                                          <input type="text" class="form-control"  placeholder="Search" >
                                          <span class="input-group-addon">
                                          <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>  
                                          </span>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </header>

<!-- 번역기능 -->	
<script type="text/javascript">
	/* 새 UI 선택 클릭 이벤트가 발생하면
       감춤 처리한 구글 번역 콤보리스트에
       선택한 언어를 적용해 변경 이벤트를 발생시키는 코드  */
	document.querySelector('.translation-links').addEventListener('click',function(event) {
		let el = event.target;
		if(el != null){
			while(el.nodeName == 'FONT'){el = el.parentElement;}//data-lang 속성이 있는 태그 찾기
			const tolang = el.dataset.lang; // 변경할 언어 코드 얻기
			const gtcombo = document.querySelector('.goog-te-combo');
			if (gtcombo == null) {
				alert("Error: Could not find Google translate Combolist.");
				return false;
			}
			gtcombo.value = tolang; // 변경할 언어 적용
			gtcombo.dispatchEvent(new Event('change')); // 변경 이벤트 트리거
		}
		return false;
	});
</script>

</body>
</html>