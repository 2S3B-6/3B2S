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
   	 
   	<tr>
   	<th colspan="5" class="text-right">
	   	<select>
		  	<option>이름</option>
		  	<option>아이디</option>
		  	<option>생년월일</option>
		  	<option>전화번호</option>
	   	</select>
   		<input class="" type="text" style="text-transform: uppercase;" size="20" placeholder="" ref="" v-model="" @keydown.enter="" >
   	</th>
   </tr>
   <!--
    <tr>
      <th class="text-center">회원 아이디</th>
      <th class="text-center">회원명</th>
      <th class="text-center">생년월일</th>
      <th class="text-center">전화번호</th>
	  <th class="text-center"></th>
    </tr>
    <tr v-for="mvo in member_list">	
      <td class="text-center">{{mvo.userId}}</td>
      <td class="text-center">{{mvo.userName}}</td>
      <td class="text-center">{{mvo.birthday}}</td>
      <td class="text-center">{{mvo.phone}}</td>
      <td class="text-center">
        <button class="btn-xs btn-success" @click="showDetaill()">상세보기</button>
      </td>
    </tr>
   </table>
-->
   <div >
	     <h4>상세보기</h4>
	     <table class="table" v-for="mvo in member_list"> <!-- mvo in member_list -->
             <tr>
                <td style="color:gray">회원 아이디</td>
                <td>{{mvo.userId}}</td>
              </tr>
              <tr>
                <td style="color:gray">회원 이름</td>
                <td>{{mvo.userName}}</td>
              </tr>
              <tr>
                <td style="color:gray">회원 비밀번호</td>
                <td>{{mvo.userPwd}}</td>
              </tr>
              <tr>
                <td style="color:gray">성별</td>
                <td>{{mvo.sex}}</td>
              </tr>
              <tr>
                <td style="color:gray">생년월일</td>
                <td>{{mvo.birthday}}</td>
              </tr>
              <tr>
                <td style="color:gray">우편번호</td>
                <td>{{mvo.post}}</td>
              </tr>
              <tr>
                <td style="color:gray">주소</td>
                <td>{{mvo.addr1}}, {{mvo.addr2}}</td>
              </tr>
              <tr>
                <td style="color:gray">전화번호</td>
                <td>{{mvo.phone}}</td>
              </tr>
              <tr>
                <td style="color:gray">회원가입일</td>
                <td>{{mvo.dbday}}</td>
              </tr>
              <tr>
                <td style="color:gray">선호하는 팀</td>
                <td>{{mvo.team}}</td>
              </tr>
              <tr>
              	<td><button class="btn-sm btn-danger" @click="">회원정보 수정</button></td>
              	<td><input type="submit" value="삭제" class="btn-sm btn-danger" @click.prevent="deleteUser"></td>
              </tr>
        </table>
	   </div>
   
   
   </div>
   
<script>
let adminApp=Vue.createApp({
	 data(){
		 return {
			 member_list:[],
			 isShow:false
		 }
	 },
	 mounted(){
		 axios.get('../adminpage/idcheck_vue.do')
			.then(response=>{
				console.log(response.data)
				this.member_list=response.data
			}).catch(error=>{
				console.log(error.response)
			})
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
		 showDetaill(userId){
	        this.isShow = !this.isShow; 
		 },
		 deleteUser() {
             // 사용자 탈퇴 요청
             axios.get('../mypage/mypage_delete_vue.do', {
                 userId: this.userId,
                 userPwd: this.userPwd
             }).then(response => {
                 if (response.data === 'yes') {
                     alert('회원 탈퇴가 완료되었습니다.');
                     location.href = "../main/main.do"; // 탈퇴 후 이동할 페이지
                 } else {
                     alert('탈퇴 실패: 비밀번호가 올바르지 않습니다.');
                 }
             }).catch(error => {
                 console.log(error.response);
                 alert('탈퇴 중 오류가 발생했습니다.');
             });
		 }
	 }
	}).mount('#adminApp')
</script>

</body>
</html>