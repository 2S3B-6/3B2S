<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우승 기록</title>
</head>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
  }
  .timeline {
    position: relative;
    max-width: 600px;
    margin: 0 auto;
  }
  .timeline::after {
    content: '';
    position: absolute;
    width: 6px;
    background-color: #003366;
    top: 0;
    bottom: 0;
    left: 50%;
    margin-left: -3px;
    
  }
  .container {
    padding: 10px 40px;
    position: relative;
    background-color: inherit;
    width: 50%;
  }
  .container.left {
    left: -50%;
  }
  .container.right {
    left: 28%;
  }
  .content {
    padding: 20px;
    background-color: white;
    position: relative;
    border-radius: 6px;
    border: 2px solid #003366;
    width: 350px;
  }
  .container.left::before {
    content: " ";
    position: absolute;
    top: 15px;
    right: -15px;
    border-width: 10px;
    border-style: solid;
    border-color: transparent white transparent transparent;
  }
  .container.right::before {
    content: " ";
    position: absolute;
    top: 15px;
    left: -15px;
    border-width: 10px;
    border-style: solid;
    border-color: transparent transparent transparent white;
  }
 .record-container{

   width: 100%;
   max-width: 1000px;
   margin: 0 auto;
   padding: 20px;
   border: 2px solid #003366; /* 칠판 같은 테두리 */
   border-radius: 10px;
   background-color: #f1f1f1;
   box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
   margin-top: 50px;
   margin-bottom: 50px;
 } 
  .modal {
    display: none; /* 초기에는 숨김 */
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    justify-content: center;
    align-items: center;
  }
  .modal-content {
    background-color: #fff;
    padding: 20px;
    border-radius: 6px;
    width: 80%;
    max-width: 500px;
    text-align: center;
    left: 37.5%;
  }
  .modal-content img {
    max-width: 100%;
    height: auto;
  }
  .close-btn {
    position: absolute;
    top: 10px;
    right: 10px;
    cursor: pointer;
    font-size: 24px;
  }
</style>
</head>
<body>
<h1 class="text-center" style="margin-top:20px;">역대 한국시리즈 우승 기록</h1>
<ul class="text-center">클릭 시 사진 열람 가능</ul>
<div class="record-container">
<div class="timeline">
  <div class="container left" onclick="showModal('modal1982')">
    <div class="content">
      <h2>1982</h2>
      <p>두산 베어스 (구 OB 베어스)</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal1983')">
    <div class="content">
      <h2>1983</h2>
      <p>KIA 타이거즈 (구 해태 타이거즈)</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal1984')">
    <div class="content">
      <h2>1984</h2>
      <p>롯데 자이언츠</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal1985')">
    <div class="content">
      <h2>1985</h2>
      <p>삼성 라이온즈</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal1986')">
    <div class="content">
      <h2>1986 ~ 1989</h2>
      <p>KIA 타이거즈 (구 해태 타이거즈)</p>
    </div>
  </div>

  <div class="container right" onclick="showModal('modal1990')">
    <div class="content">
      <h2>1990</h2>
      <p>LG 트윈스</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal1991')">
    <div class="content">
      <h2>1991</h2>
      <p>KIA 타이거즈 (구 해태 타이거즈)</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal1992')">
    <div class="content">
      <h2>1992</h2>
      <p>롯데 자이언츠</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal1993')">
    <div class="content">
      <h2>1993</h2>
      <p>KIA 타이거즈 (구 해태 타이거즈)</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal1994')">
    <div class="content">
      <h2>1994</h2>
      <p>LG 트윈스</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal1995')">
    <div class="content">
      <h2>1995</h2>
      <p>두산 베어스 (구 OB 베어스)</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal1996')">
    <div class="content">
      <h2>1996 ~ 1997</h2>
      <p>KIA 타이거즈 (구 해태 타이거즈)</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal1998')">
    <div class="content">
      <h2>1998</h2>
      <p>현대 유니콘즈</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal1999')">
    <div class="content">
      <h2>1999</h2>
      <p>한화 이글스</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal2000')">
    <div class="content">
      <h2>2000</h2>
      <p>현대 유니콘즈</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal2001')">
    <div class="content">
      <h2>2001</h2>
      <p>두산 베어스</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal2002')">
    <div class="content">
      <h2>2002</h2>
      <p>삼성 라이온즈</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal2003')">
    <div class="content">
      <h2>2003 ~ 2004</h2>
      <p>현대 유니콘즈</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal2005')">
    <div class="content">
      <h2>2005 ~ 2006</h2>
      <p>삼성 라이온즈</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal2007')">
    <div class="content">
      <h2>2007 ~ 2008</h2>
      <p>SSG 랜더스 (구 SK 와이번스)</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal2009')">
    <div class="content">
      <h2>2009</h2>
      <p>KIA 타이거즈</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal2010')">
    <div class="content">
      <h2>2010</h2>
      <p>SSG 랜더스 (구 SK 와이번스)</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal2011')">
    <div class="content">
      <h2>2011 ~ 2014</h2>
      <p>삼성 라이온즈</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal2015')">
    <div class="content">
      <h2>2015 ~ 2016</h2>
      <p>두산 베어스</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal2017')">
    <div class="content">
      <h2>2017</h2>
      <p>KIA 타이거즈</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal2018')">
    <div class="content">
      <h2>2018</h2>
      <p>SSG 랜더스 (구 SK 와이번스)</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal2019')">
    <div class="content">
      <h2>2019</h2>
      <p>두산 베어스</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal2020')">
    <div class="content">
      <h2>2020</h2>
      <p>NC 다이노스</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal2021')">
    <div class="content">
      <h2>2021</h2>
      <p>KT 위즈</p>
    </div>
  </div>
  <div class="container right" onclick="showModal('modal2022')">
    <div class="content">
      <h2>2022</h2>
      <p>SSG 랜더스</p>
    </div>
  </div>
  <div class="container left" onclick="showModal('modal2023')">
    <div class="content">
      <h2>2023</h2>
      <p>LG 트윈스</p>
    </div>
  </div>

  <div class="container right" onclick="showModal('modal2024')">
    <div class="content">
      <h2>2024</h2>
      <p>WHO'S NEXT?</p>
    </div>
  </div>
  <!-- 반복적으로 추가 -->
</div>
</div>
<div id="modal1982" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1982')">&times;</span>
    <h2>1982 한국시리즈 우승</h2>
    <img src="../images/record/1982.jpg" alt="1982 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1983" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1983')">&times;</span>
    <h2>1983 한국시리즈 우승</h2>
    <img src="../images/record/1983.jpg" alt="1983 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1984" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1984')">&times;</span>
    <h2>1984 한국시리즈 우승</h2>
    <img src="../images/record/1984.jpg" alt="1984 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1985" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1985')">&times;</span>
    <h2>1985 한국시리즈 우승</h2>
    <img src="../images/record/1985.jpg" alt="1985 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1986" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1986')">&times;</span>
    <h2>1986 한국시리즈 우승</h2>
    <img src="../images/record/1986.jpg" alt="1986 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1990" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1990')">&times;</span>
    <h2>1990 한국시리즈 우승</h2>
    <img src="../images/record/1990.jpg" alt="1990 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1991" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1991')">&times;</span>
    <h2>1991 한국시리즈 우승</h2>
    <img src="../images/record/1991.jpg" alt="1991 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1992" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1992')">&times;</span>
    <h2>1992 한국시리즈 우승</h2>
    <img src="../images/record/1992.jpg" alt="1992 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1993" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1993')">&times;</span>
    <h2>1993 한국시리즈 우승</h2>
    <img src="../images/record/1993.jpg" alt="1993 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1994" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1994')">&times;</span>
    <h2>1994 한국시리즈 우승</h2>
    <img src="../images/record/1994.jpg" alt="1994 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1995" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1995')">&times;</span>
    <h2>1995 한국시리즈 우승</h2>
    <img src="../images/record/1995.jpg" alt="1995 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1996" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1996')">&times;</span>
    <h2>1996 한국시리즈 우승</h2>
    <img src="../images/record/1996.jpg" alt="1996 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1998" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1998')">&times;</span>
    <h2>1998 한국시리즈 우승</h2>
    <img src="../images/record/1998.jpg" alt="1998 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal1999" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal1999')">&times;</span>
    <h2>1999 한국시리즈 우승</h2>
    <img src="../images/record/1999.jpg" alt="1999 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2000" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2000')">&times;</span>
    <h2>2000 한국시리즈 우승</h2>
    <img src="../images/record/2000.jpg" alt="2000 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2001" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2001')">&times;</span>
    <h2>2001 한국시리즈 우승</h2>
    <img src="../images/record/2001.jpg" alt="2001 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2002" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2002')">&times;</span>
    <h2>2002 한국시리즈 우승</h2>
    <img src="../images/record/2002.jpg" alt="2002 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2003" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2003')">&times;</span>
    <h2>2003 한국시리즈 우승</h2>
    <img src="../images/record/2003.jpg" alt="2003 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2005" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2005')">&times;</span>
    <h2>2005 한국시리즈 우승</h2>
    <img src="../images/record/2005.jpg" alt="2005 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2007" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2007')">&times;</span>
    <h2>2007 한국시리즈 우승</h2>
    <img src="../images/record/2007.jpg" alt="2007 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2009" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2009')">&times;</span>
    <h2>2009 한국시리즈 우승</h2>
    <img src="../images/record/2009.jpg" alt="2009 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2010" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2010')">&times;</span>
    <h2>2010 한국시리즈 우승</h2>
    <img src="../images/record/2010.jpg" alt="2010 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2011" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2011')">&times;</span>
    <h2>2011 한국시리즈 우승</h2>
    <img src="../images/record/2011.jpg" alt="2011 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2015" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2015')">&times;</span>
    <h2>2015 한국시리즈 우승</h2>
    <img src="../images/record/2015.jpg" alt="2015 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2017" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2017')">&times;</span>
    <h2>2017 한국시리즈 우승</h2>
    <img src="../images/record/2017.jpg" alt="2017 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2018" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2018')">&times;</span>
    <h2>2018 한국시리즈 우승</h2>
    <img src="../images/record/2018.jpg" alt="2018 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2019" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2019')">&times;</span>
    <h2>2019 한국시리즈 우승</h2>
    <img src="../images/record/2019.jpg" alt="2019 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2020" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2020')">&times;</span>
    <h2>2020 한국시리즈 우승</h2>
    <img src="../images/record/2020.jpg" alt="2020 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2021" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2021')">&times;</span>
    <h2>2021 한국시리즈 우승</h2>
    <img src="../images/record/2021.jpg" alt="2021 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2022" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2022')">&times;</span>
    <h2>2022 한국시리즈 우승</h2>
    <img src="../images/record/2022.jpg" alt="2022 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>

<div id="modal2023" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('modal2023')">&times;</span>
    <h2>2023 한국시리즈 우승</h2>
    <img src="../images/record/2023.jpg" alt="2023 우승 이미지" style="width: 100%; height: auto;">
  </div>
</div>
<script>
  // 모달 열기 함수
  function showModal(modalId) {
    document.getElementById(modalId).style.display = "block";
  }

  // 모달 닫기 함수
  function closeModal(modalId) {
    document.getElementById(modalId).style.display = "none";
  }

  // 모달 외부를 클릭해도 닫기 기능 추가
  window.onclick = function(event) {
    const modals = document.getElementsByClassName("modal");
    for (let i = 0; i < modals.length; i++) {
      if (event.target === modals[i]) {
        modals[i].style.display = "none";
      }
    }
  }
</script>
</body>

</html>