<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body {
    background-color: #f5f5f5;
}

/* 헤더를 전체 페이지 너비로 확장 */
.inner-page-banner {
    width: 100%; /* 전체 너비 */
    background-color: #f5f5f5; /* 헤더 배경색 */
    padding: 20px 0; /* 상하 패딩 */
    box-sizing: border-box;
}

/* 마이페이지를 감싸는 큰 네모 박스 */
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

/* 테이블 스타일 */
.table {
    width: 100%;
    border-collapse: collapse; /* 테이블 셀 간격 없애기 */
}

.table th, .table td {
    padding: 12px 15px; /* 테이블 셀 내부 여백 */
    border-bottom: 1px solid #ddd; /* 행 사이에 구분선 */
    text-align: center;
}

.table th {
    background-color: #f7f7f7; /* 헤더 배경색 */
    font-weight: bold;
}

.table td a {
    color: #333;
    text-decoration: none;
}

.table td a:hover {
    text-decoration: underline;
}

/* 버튼 스타일 */
.btn-xs {
    padding: 5px 10px;
    font-size: 12px;
}

.btn-success {
    background-color: #28a745;
    color: white;
}

.btn-danger {
    background-color: #dc3545;
    color: white;
}

.text-center {
    margin-top: 20px;
}

/* 페이지 이동 버튼 */
.text-center {
    margin-top: 20px;
}

.container {
    margin-bottom: 50px;
}
</style>
</head>
<body>
 <div id="adminApp" class="mypage-container">
   <table class="table">
   <tr>
   	<td class="text-center" colspan="8">
   		<h4>예약 관리</h4>
   	</td>
   </tr>
    <tr>
      <th class="text-center">번호</th>
      <th class="text-center"></th>
      <th class="text-center">업체명</th>
      <th class="text-center">예약일</th>
      <th class="text-center">방등급</th>
      <th class="text-center">가격</th>
      <th class="text-center">등록일</th>
      <th class="text-center">비고</th>
    </tr>
    <tr v-for="vo in reserve_list">
      <td class="text-center">{{vo.rno}}</td>
      <td class="text-center">
        <img :src="vo.hvo.poster" style="width: 30px;height: 30px">
      </td>
      <td class="text-center">{{vo.hvo.name}}</td>
      <td class="text-center">{{vo.rday}}</td>
      <td class="text-center">{{vo.rroom}}</td>
      <td class="text-center">{{vo.rprice}}원</td>
      <td class="text-center">{{vo.dbday}}</td>
      <td class="text-center">
        <button class="btn-xs btn-success" v-if="vo.isreserve===1" @click="hotelInfo(vo.hno,vo.rno)">예약완료</button>
        <button class="btn-xs btn-danger" v-else >예약대기</button>
      </td>
    </tr>
   </table>
   </div>

 <script>
  let adminApp=Vue.createApp({
	  data(){
		  return {
			 reserve_list:[],
			 rno:0,
			 reserve_info:{},
			 isShow:false
		  }
	  },
	  mounted(){
		  // 서버로 전송할 데이터가 없는 경우 params => ?
		  axios.get('../adminpage/admin_reserve_vue.do')
		  .then(response=>{
			  console.log(response.data)
			  this.reserve_list=response.data
		  }).catch(error=>{
			  console.log(error.response)
		  })
	  },
	  methods:{
		  hotelInfo(hno,rno){
			  this.isShow=true
			  axios.get('../adminpage/reserve_info_vue.do',{
				  params:{
					  hno:hno,
					  rno:rno
				  }
			  }).then(response=>{
				  console.log(response.data)
				  this.reserve_info=response.data
			  }).catch(error=>{
				  console.log(error.response)
			  })
		  }
	  }
  }).mount("#adminApp")
 </script>
</body>
</html>