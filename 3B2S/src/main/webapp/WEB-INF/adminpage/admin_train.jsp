<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
	        <h4>기차 예약 내역</h4>
	      </td>
	    </tr>
	    <tr >
	    	<th colspan="6" class="text-right">
	    		예약 검색 : <input class="" type="text" style="text-transform: uppercase;" size="20" placeholder="" ref="" v-model="" @keydown.enter=adminCnoList() >
	    	</th>
	    </tr>
	    <tr>
	      <th class="text-center">기차 종류</th>
	      <th class="text-center">출발일</th>
	      <th class="text-center">출발역/도착역</th>
	      <th class="text-center">출발시간/도착시간</th>
	      <th class="text-center">좌석</th>
	      <th class="text-center">인원</th>
	      <th class="text-center">금액</th>
	    </tr>
	    <tr v-for="vo in train_list">
	      <td class="text-center">{{vo.ttype}}</td>
	      <td class="text-center">{{vo.tday}}</td>
	      <td class="text-center">{{vo.sstart}}/{{vo.send}}</td>
	      <td class="text-center">{{vo.tstart}}/{{vo.tend}}</td>
	      <td class="text-center">{{vo.tseat}}</td>
	      <td class="text-center">{{vo.tinwon}}</td>
	      <td class="text-center">{{formatPrice(vo.totalprice)}}원</td>
	    </tr>
	   </table>
	 </div>
	 <script>
	 let mypageApp=Vue.createApp({
			data(){
				return {
					train_list:[]
				}
			},
			mounted(){
				axios.get('../adminpage/admin_train_vue.do')
				.then(response=>{
					this.train_list=response.data
				}).catch(error=>{
					console.log(error.response)
				})
			},
		    methods: {
		        formatPrice(value) {
		            return value.toLocaleString(); // 쉼표 형식으로 변환
		        }
		    }
	 }).mount("#mypageApp");
	 </script>
</body>
</html>