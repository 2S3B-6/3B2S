<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mypage-container {
    width: 100%;
    max-width: 1200px; /* 적당한 최대 너비 */
    margin: 0 auto; /* 가운데 정렬 */
    padding: 20px; /* 내부 여백 */
    border: 2px solid #003366; /* 테두리 추가 */
    border-radius: 10px; /* 모서리 둥글게 */
    background-color: #fff; /* 배경색 */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
}
</style>
</head>
<body>
<div id="mypageApp" class="mypage-container">
	   <table class="table">
	    <tr>
	      <td class="text-center" colspan="7">
	        <h4>티켓 예약 내역</h4>
	      </td>
	    </tr>
	    <tr>
	      <th class="text-center">좌석 종류</th>
	      <th class="text-center">좌석 번호</th>
	      <th class="text-center">경기 날짜</th>
	      <th class="text-center">금액</th>
	    </tr>
	    <tr v-for="vo in ticket_list">
	      <td class="text-center">{{vo.rtype}}</td>
	      <td class="text-center">{{vo.rseat}}</td>
	      <td class="text-center">{{vo.rday}}</td>
	      <td class="text-center">{{vo.rprice}}</td>
	    </tr>
	   </table>
	 </div>
	 <script>
	 let mypageApp=Vue.createApp({
			data(){
				return {
					ticket_list:[]
				}
			},
			mounted(){
				axios.get('../mypage/mypage_ticket_vue.do')
				.then(response=>{
					this.ticket_list=response.data
				}).catch(error=>{
					console.log(error.response)
				})
			}

	 }).mount("#mypageApp");
	 </script>
</body>
</html>