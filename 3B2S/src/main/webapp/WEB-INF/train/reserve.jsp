<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script type="text/javascript">
$(function(){
	$('header').css({display:'none'});	
})
</script> 
<style type="text/css">
*, *:before, *:after {
  box-sizing: border-box;
}
.train-info {
  width: 100%;
  background-color: #fff;
  padding: 20px;
  border-radius: 10px;
  margin-bottom: 30px;
}
.train-info table {
  width: 100%;
  border-collapse: collapse;
}
.train-info th, .train-info td {
  padding: 5px;
}
.train-info th {
  background-color: #f4f4f4;
  font-weight: bold;
}
.train {
  max-width: 250px;
  transform: scale(0.65); 
  transform-origin: top left; 
}
.train-info-seats-container {
  display: flex;
  gap: 20px;
  margin-top: 30px;
  justify-content: space-between;
}
.train-info-section {
  flex: 1;
  max-width: 50%; 
}

.seat-arrangement-section {
  flex: 1;
  max-width: 50%;
}
html {
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
}

.train-info h4 {
  text-align: center;
  margin-bottom: 20px;
}
.train-info {
  width: 48%;
  background-color: #fff;
  padding: 20px;
  border-radius: 10px;

  margin-bottom: 30px;
}
.train-info table {
  width: 100%;
  border-collapse: collapse;
}
.train-info table, .train-info th, .train-info td {
  border: 1px solid #ddd;
  text-align: center;
}
.train-info th, .train-info td {
  padding: 5px;
}
.train-info th {
  background-color: #f4f4f4;
  font-weight: bold;
}
.train-info th:first-child, .train-info td:first-child {
  width: 30%;  
}
.train-info th:last-child, .train-info td:last-child {
  width: 70%; 
}
.train {
  margin: 20px auto;
  max-width: 250px;
  transform: scale(0.65); 
  transform-origin: top left; 
}
.exit {
  display: flex;
  flex-direction: row;
  padding: .5rem 0;
}
.exit div {
  flex: 1;
  background: #d8d8d8;
  text-align: center;
  justify-content: center;
  height: 40px;
  line-height: 40px;
}
.exit div:nth-child(2) {
  flex: 0 1 20%;
  background: #fff;
}
.exit.back {
  flex-direction: row-reverse;
}

.train-body {
  border-right: 5px solid #d8d8d8;
  border-left: 5px solid #d8d8d8;
}

ol {
  list-style: none;
  padding: 0;
  margin: 0;
}

.seats {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: flex-start;
}

.seat {
  display: flex;
  flex: 0 0 21%;
  padding: 5px;
  position: relative;
}
.seat:nth-child(2) {
  margin-right: 15%;
}

input[type=checkbox] {
  position: absolute;
  opacity: 0;
}
input[type=checkbox]:checked + label {
  background: #003366;
  animation-name: rubberBand;
  animation-duration: 300ms;
  animation-fill-mode: both;
}
input[type=checkbox]:disabled + label {
  background: #dddddd;
  text-indent: -9999px;
  overflow: hidden;
}
input[type=checkbox]:disabled + label:after {
  content: "X";
  text-indent: 0;
  position: absolute;
  top: 4px;
  left: 50%;
  transform: translate(-50%, 0%);
}
input[type=checkbox]:disabled + label:hover {
  box-shadow: none;
  cursor: not-allowed;
}

label {
  display: block;
  position: relative;
  width: 100%;
  text-align: center;
  font-size: 14px;
  font-weight: bold;
  line-height: 1.5rem;
  padding: 4px 0;
  background: #999999;
  color: black; 
  border-radius: 5px;
  animation-duration: 300ms;
  animation-fill-mode: both;
}

label:before {
  content: "";
  position: absolute;
  width: 75%;
  height: 75%;
  top: 1px;
  left: 50%;
  transform: translate(-50%, 0%);
  background: rgba(255, 255, 255, .4);
  border-radius: 3px;
}

label:hover {
  cursor: pointer;
  box-shadow: 0 0 0px 2px #5C6AFF;
}

@-webkit-keyframes rubberBand {
  0% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
  30% {
    -webkit-transform: scale3d(1.25, 0.75, 1);
    transform: scale3d(1.25, 0.75, 1);
  }
  40% {
    -webkit-transform: scale3d(0.75, 1.25, 1);
    transform: scale3d(0.75, 1.25, 1);
  }
  50% {
    -webkit-transform: scale3d(1.15, 0.85, 1);
    transform: scale3d(1.15, 0.85, 1);
  }
  65% {
    -webkit-transform: scale3d(.95, 1.05, 1);
    transform: scale3d(.95, 1.05, 1);
  }
  75% {
    -webkit-transform: scale3d(1.05, .95, 1);
    transform: scale3d(1.05, .95, 1);
  }
  100% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}

@keyframes rubberBand {
  0% {
    transform: scale3d(1, 1, 1);
  }
  30% {
    transform: scale3d(1.25, 0.75, 1);
  }
  40% {
    transform: scale3d(0.75, 1.25, 1);
  }
  50% {
    transform: scale3d(1.15, 0.85, 1);
  }
  65% {
    transform: scale3d(.95, 1.05, 1);
  }
  75% {
    transform: scale3d(1.05, .95, 1);
  }
  100% {
    transform: scale3d(1, 1, 1);
  }
}

.rubberBand {
  animation-name: rubberBand;
}
 .header, .footer {
    display: none;
} 
.reserve-btn {
  display: block;
  width: 100%;
  padding: 10px 0;
  margin-top: 20px;
  background-color: #003366;
  color: white;
  text-align: center;
  font-size: 16px;
  font-weight: bold;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  transition: background-color 0.3s;
}
.reserve-btn:hover {
  background-color: #005399;
}
</style>
</head>
<body>
<section>
    <div class="train-page-banner">
        <div class="container">
        </div>
     </div>
     <div class="inner-information-text">
        <div class="container">
           <h3>기차 예약</h3>
           <ul class="breadcrumb">
              <li>Home</li>
              <li class="active"><a href="../train/reserve.do">기차 예약</a></li>
           </ul>
        </div>
     </div>
  </section>
 <section id="reserveApp" class="train-info-seats-container" style="margin-left: 60px;margin-top: 20px">
  <div class="train-info-section train-info" style="margin-top: 30px">
    <table>
        <tr><td>열차 종류</td><td id="trainType"></td></tr>
        <tr><td>출발역</td><td id="departureStation"></td></tr>
        <tr><td>도착역</td><td id="arrivalStation"></td></tr>
        <tr><td>출발일</td><td id="departureDate"></td></tr>
        <tr><td>출발시간</td><td id="departureTime"></td></tr>
        <tr><td>도착시간</td><td id="arrivalTime"></td></tr>
        <tr><td>좌석</td><td id="passengerSeat"></td></tr>
        <tr><td>인원</td><td id="passengerCount"></td></tr>
        <tr><td>요금</td><td id="price"></td></tr>
    </table>
    <button class="reserve-btn" @click="reserve()">예매하기</button>
  </div>

  <div class="seat-arrangement-section train" style="margin-bottom: -250px">
    <div class="train-body">
        <div class="exit front">
            <div>Toilet</div><div></div><div></div>
        </div>
        <ol class="wagon">
            <c:forEach var="row" begin="1" end="13">
              <li class="row row--${row }">
                <ol class="seats">
                  <li class="seat">
                    <c:set var="seat" value="${row }A"></c:set>
                    <input type="checkbox" id="${row }A" />
                    <label for="${row }A">${seat }</label>
                  </li>
                  <li class="seat">
                    <c:set var="seat" value="${row}B"></c:set>
                    <input type="checkbox" id="${row }B" />
                    <label for="${row }B">${seat }</label>
                  </li>
                  <li class="seat">
                    <c:set var="seat" value="${row }C"></c:set>
                    <input type="checkbox" id="${row }C" />
                    <label for="${row }C">${seat }</label>
                  </li>
                  <li class="seat">
                    <c:set var="seat" value="${row }D"></c:set>
                    <input type="checkbox" id="${row }D" />
                    <label for="${row }D">${seat }</label>
                  </li>
                </ol>
              </li>
            </c:forEach>
        </ol>
        <div class="exit back">
          <div>Toilet</div><div></div><div></div>
        </div>
    </div>
  </div>
</section>
  <script>
  $(document).ready(function() {
      // 전역에서 사용할 변수 선언
      let price = 0; // 기본값 설정
      const urlParams = new URLSearchParams(window.location.search);
      
      // URL 파라미터로 받은 값을 HTML 요소에 설정
      const ttype = urlParams.get("ttype");
      const sstart = urlParams.get("sstart");
      const send = urlParams.get("send");
      const tstart = urlParams.get("tstart");
      const tend = urlParams.get("tend");
      const departureDate = urlParams.get("departureDate");
      price = parseInt(urlParams.get("price"), 10); // 숫자로 변환하여 price에 할당

      console.log("Received price:", price); // price 확인

      // 요소에 값을 설정
      $("#trainType").text(ttype);
      $("#departureStation").text(sstart);
      $("#arrivalStation").text(send);
      $("#departureTime").text(tstart);
      $("#arrivalTime").text(tend);
      $("#departureDate").text(departureDate);

      // 선택된 좌석 관리
      let selectedSeats = [];
      let selectedSeatsCount = 0;

      // 체크박스를 클릭할 때마다 실행
      $('input[type="checkbox"]').click(function() {
          const seatId = $(this).attr('id');

          if ($(this).is(':checked')) {
              selectedSeats.push(seatId);
              selectedSeatsCount++;
          } else {
              selectedSeats = selectedSeats.filter(seat => seat !== seatId);
              selectedSeatsCount--;
          }

          // 좌석 정보 및 인원수 표시
          $("#passengerSeat").text(selectedSeats.join(', '));
          $("#passengerCount").text(selectedSeatsCount + "명");

          // 요금 계산 및 표시
          const totalprice = price * selectedSeatsCount;
          $("#price").text(totalprice.toLocaleString() + "원");
          console.log("Total price:", totalprice); // totalprice 확인
      });
  });
  
	  var IMP = window.IMP 
	  IMP.init("imp68206770")
	  
	  let reserveApp = Vue.createApp({
      data() {
          return {
              ttype: '',           
              sstart: '',     
              send: '',          
              departureDate: '',   
              tstart: '',  
              tend: '',    
              price: 0,           
              total_price: 0,    
              selectedSeats: [],  
              passengerCount: 0   ,
              tno:0,
              totalprice:'',
              tseat:'',
              tinwon:''
          }
      },
      mounted() {
          
      },
      methods: {
          updateSeatSelection(seatId) {
              const index = this.selectedSeats.indexOf(seatId)
              if (index === -1) {
                  this.selectedSeats.push(seatId)
              } else {
                  this.selectedSeats.splice(index, 1)
              }

              this.passengerCount = this.selectedSeats.length
              this.total_price = this.price * this.passengerCount
          },
          requestPay() {
        	  let totalpriceText = $('#price').text().slice(0, -1);
        	  let realprice = parseInt(totalpriceText.replace(/,/g, ''));
              IMP.request_pay({
                  pg: "html5_inicis",
                  pay_method: "card",
                  merchant_uid: "ORD20180131-0000011",
                  name: "기차",
                  amount: realprice,
                  buyer_email: '',
                  buyer_name: '',
                  buyer_tel: '',
                  buyer_addr: '',
                  buyer_postcode: ''
              }, function (rsp) {
                  location.href = "../mypage/mypage_train.do" 
                  
              });
          },
          reserve() {
        	  let totalpriceText = $('#price').text().slice(0, -1);
        	  let realprice = parseInt(totalpriceText.replace(/,/g, ''));
        	  axios.post('../train/reserve_ok_vue.do',null,{
        		  params:{
                     
                	  
                	  
                      tno:${tno},
                	  ttype:'${ttype}',           
                      sstart:'${sstart}',     
                      send:'${send}',          
                      tday:'${tday}',   
                      tstart:'${tstart}',  
                      tend:'${tend}',    
                      totalprice:realprice,    
                      tseat:$('#passengerSeat').text(),  
                      tinwon:$('#passengerCount').text()
                  }
                  }).then(response=>{
                     if(response.data==='yes')
                     {
                        alert("yes!!")
                        this.requestPay()
                     }
                     else
                     {
                        alert(response.data)
                     }
                     console.log(response.data)
                  }).catch(error=>{
                     console.log(error.response)
                  }) 
            }
      }
  }).mount("#reserveApp")
</script>


</body>
</html>