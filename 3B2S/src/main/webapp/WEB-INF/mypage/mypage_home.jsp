<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mypage-summary {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
  padding: 20px;
}

.mypage-container {
 margin-bottom : 20px;
}

.summary-box {
  background-color: #f5f5f5;
  border: 1px solid #ddd;
  padding: 15px;
  border-radius: 8px;
  text-align: center;
  transition: transform 0.2s;
}

.summary-box:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>
<section>
<h1>${userName }의 마이페이지</h1>
</section>
<section id="homeApp">
<h2>구매 관련 메뉴</h2>
<div class="mypage-container">
<div class="mypage-summary">
  <a href="../mypage/mypage_buy.do">
   <div class="summary-box">
    <h3>구매</h3>
    <p>{{BuyCount}} 건</p>
   </div>
  </a>
  
  
  
  <a href="../mypage/mypage_cart.do">
   <div class="summary-box">
    <h3>장바구니</h3>
    <p>{{CartCount}} 건</p>
   </div>
  </a>
  
    <a href="../mypage/mypage_ticket.do">
   <div class="summary-box">
    <h3>티켓 구매</h3>
    <p>{{TicketCount}} 건</p>
   </div>
  </a>
  
  </div>
  </div>
  
  
<h2>예약 관련 메뉴</h2>
  <div class="mypage-container">
  <div class="mypage-summary">
  <a href="../mypage/mypage_train.do">
   <div class="summary-box">
    <h3>기차 예약</h3>
    <p>{{TrainCount}} 건</p>
   </div> 
  </a>

  <a href="../mypage/mypage_reserve.do">
   <div class="summary-box">
    <h3>호텔 예약 대기</h3>
    <p>{{HotelCount1}} 건</p>
   </div>
  </a>

  <a href="../mypage/mypage_reserve.do">
   <div class="summary-box">
    <h3>호텔 예약 완료</h3>
    <p>{{HotelCount}} 건</p>
   </div>
  </a>
  </div>
  </div>

<h2>게시판 관련 메뉴</h2>
  <div class="mypage-container">
  <div class="mypage-summary">
  <a href="../mypage/mypage_board.do">
   <div class="summary-box">
    <h3>내가 쓴 글</h3>
    <p>{{BoardCount}} 건</p>
   </div>
  </a>
  
  <a href="../mypage/mypage_comment.do">
   <div class="summary-box">
    <h3>내가 쓴 댓글</h3>
    <p>{{ReplyCount}} 건</p>
   </div>
  </a>
</div>
</div>
</section>
<script>
let homeApp = Vue.createApp({
	data(){
		return {
			BuyCount:0,
			CartCount:0,
			TicketCount:0,
			TrainCount:0,
			HotelCount1:0,
			HotelCount:0,
			BoardCount:0,
			ReplyCount:0
		}
	},
    mounted() {
        this.dataRecv()
      },
    methods:{
    	dataRecv(){
    		axios.get('../mypage/mypage_home_vue.do',{
    			
    		}).then(response=>{
    			this.BuyCount = response.data.BuyCount
    			this.CartCount = response.data.CartCount
    			this.TicketCount = response.data.TicketCount
    			this.TrainCount = response.data.TrainCount
    			this.HotelCount1 = response.data.HotelCount1
    			this.HotelCount = response.data.HotelCount
    			this.BoardCount = response.data.BoardCount
    			this.ReplyCount = response.data.ReplyCount
    		}).catch(error=>{
    			console.log(error.response)
    		})
    			
    		}
    	}
}).mount('#homeApp')
</script>
</body>
</html>