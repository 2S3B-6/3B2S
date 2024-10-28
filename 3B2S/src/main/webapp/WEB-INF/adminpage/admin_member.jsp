<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
 <div id="adminApp" class="mypage-container" >

   <table class="table">
   <tr>
   	<td class="text-center" colspan="5">
   		<h4>회원 관리</h4>
   	</td>
   	<tr >
	    	<th colspan="5" class="text-right">
	    		검색 : <input class="" type="text" style="text-transform: uppercase;" size="20" placeholder="" ref="" v-model="" @keydown.enter="" >
	    	</th>
	    </tr>
   </tr>
    <tr>
      <th class="text-center">회원 아이디</th>
      <th class="text-center">회원명</th>
      <th class="text-center">생년월일</th>
      <th class="text-center">전화번호</th>
	  <th class="text-center"></th>
    </tr>
    <tr v-for="">	<!-- mvo in member_list -->
      <td class="text-center">hong</td>
      <td class="text-center">홍길동</td>
      <td class="text-center">2020-10-14</td>
      <td class="text-center">010-11111111</td>
      <td class="text-center">
        <button class="btn-xs btn-success" @click="showDetaill()">상세보기</button>
      </td>
    </tr>
   </table>

   <div v-if="isShow">
	     <h4>상세보기</h4>
	     <table class="table" v-for=""> <!-- mvo in member_list -->
             <tr>
                <td style="color:gray">회원 아이디</td>
                <td>hong</td>
              </tr>
              <tr>
                <td style="color:gray">회원 이름</td>
                <td>홍길동</td>
              </tr>
              <tr>
                <td style="color:gray">회원 비밀번호</td>
                <td>hong1234</td>
              </tr>
              <tr>
                <td style="color:gray">성별</td>
                <td>남자</td>
              </tr>
              <tr>
                <td style="color:gray">생년월일</td>
                <td>2024-10-14</td>
              </tr>
              <tr>
                <td style="color:gray">우편번호</td>
                <td>13543</td>
              </tr>
              <tr>
                <td style="color:gray">주소</td>
                <td>경기 성남시 분당구 대왕판교로 364 1234-1231</td>
              </tr>
              <tr>
                <td style="color:gray">전화번호</td>
                <td>010-11111111</td>
              </tr>
              <tr>
                <td style="color:gray">회원가입일</td>
                <td>24/10/14</td>
              </tr>
              <tr>
                <td style="color:gray">선호하는 팀</td>
                <td>두산</td>
              </tr>
              <tr>
              	<td><button class="bbtn btn-sm" @click="">회원정보 수정</button></td>
              	<td><button class="bbtn btn-sm" @click="">회원 탈퇴</button></td>
              </tr>
        </table>
	   </div>
   
   
   </div>
   
<script>
let adminApp=Vue.createApp({
	 data(){
		 return {
			 member_list:[],
			 isShow:false,
		 }
	 },
	 mounted(){
		 this.dataRecv()
	 },
	 // 사용자 정의 함수 => 이벤트 처리 , 공통으로 적용 
	 methods:{	 
		 // 공통으로 사용되는 함수 => 서버연결후에 데이터 읽기
		 dataRecv(){
			 axios.get('../adminpage/idcheck_vue.do')
				.then(response=>{
				 // 정상 수행시 => 데이터를 읽어온다 
				 console.log(response.data)
				 this.member_list=response.data.list
			 }).catch(error=>{
				 // 서버에서 에러 발생
				 alert(error.response)
				 console.log(error.response)
			 })
		 },
		 showDetaill(){
			
			        this.isShow = !this.isShow; 
		 }
	 }
	}).mount('#adminApp')
</script>

</body>
</html>