<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="mypageApp">
	   <table class="table">
	    <tr>
	      <td class="text-center" colspan="7">
	        <h4>기차 예약 내역</h4>
	      </td>
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
				axios.get('../mypage/mypage_train_vue.do')
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