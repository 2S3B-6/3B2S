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
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<body>
	<div id="JoinUpdateApp" class="mypage-container">
	   <table class="table">
	    <tr>
	      <td class="text-center" colspan="6">
	        <h4>비밀번호 변경</h4>
	      </td>
	    </tr>
   <section class="single_blog_area section_padding_20" id="JoinUpdateApp">
        <div class="container">
            <div class="row justify-content-center">
              <form method="post" action="../mypage/update_ok.do" @submit="submitForm()">
			    <table class="table">
			     <tr>
			      <th class="text-right" width="30%">ID</th>
			      <td width="70%" >
			       <input type="text" size=15 class="input-sm" v-bind:readonly="isReadOnly" name="userId" ref="userId" v-model="userId">
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="30%" style="border: none;">비밀번호</th>
			      <td width="70%" style="border: none;">
			       <input type="password" size=15 class="input-sm" name="userPwd" ref="userPwd" v-model="userPwd" @keyup="pwdValidate()">
			       <div class="text-center">
			       <p>{{pwdOk}}</p>
			       </div>
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="40%" style="border: none;">비밀번호 확인</th>
			      <td width="60%" style="border: none;">
			       <input type="password" size=15 class="input-sm" name="userPwd2" ref="userPwd2" v-model="userPwd2" @keyup="pwdValidate2()">

			      </td>
			     </tr>






			     <tr>
			       <td colspan="2" class="text-center">
			        <input type="submit" value="수정" class="btn-sm ">
			        &nbsp;&nbsp;
			        <input type=button value="취소" class="btn-sm " onclick="javascript:history.back()">
			       </td>
			     </tr>
			    </table>
			    </form>
            </div>
        </div>
    </section>
    
<script>
let JoinUpdateApp=Vue.createApp({
 data(){
	 return {
		 userId: "${userId}",
		 pwdOk:''
	 }
 },
 mounted() {
	    axios.get('../mypage/mypage_pwd_vue.do', {
	        params: {
	            userId: this.userId // 로그인된 사용자 ID
	        }
	    }).then(response => {
	        // 서버에서 받은 데이터를 Vue 데이터 속성에 저장
	        let member = response.data;
	        // 비밀번호는 빈 칸으로 두고, 새로운 입력만 받도록 설정
	        this.userPwd = '';
	        this.userPwd2 = '';
	    }).catch(error => {
	        console.log(error.response);
	    });
	},
 methods:{
	 pwdValidate(){
		 let pwd=String(this.userPwd)
		 let num=pwd.search(/[0-9]/g)
		 let eng=pwd.search(/[a-z]/g)
		 if(pwd==='')
		 {
			 this.pwdOk=''
			 return
		 }
		 
		 if(pwd.length<8 || pwd.length>20)
		 {
			this.pwdOk='비밀번호는 8자리~20자리 이내로 입력하세요' 
			return
		 }
		 
		 else if(pwd.search(/\s/)!=-1)
	     {
			 this.pwdOk="비밀번호는 공백없이 입력하세요"
			 return
	     }
		 else if(num<0 || eng<0)
		 {
			 this.pwdOk="비밀번호는 영문,숫자를 혼합해서 입력해야 합니다"
			 return
		 }
		 else
		 {
			 this.pwdOk=''
			 return
		 }
	 },
	 pwdValidate2(){
		 if(this.userPwd!=this.userPwd2)
		 {
			 this.pwdOk='비밀번호가 일치하지 않습니다'
		 }
		 else
		 {
			 this.pwdOk=''
		 }
	 },
	 submitForm(e) {
		    // 필수 입력값을 모두 확인 후 수정 요청 처리
		    if (this.userId && this.userName && this.userPwd && this.userPwd2 && this.pwdOk === '') {

		        // 서버로 수정 요청을 보내는 axios 호출
		        axios.post('../mypage/pwd_ok.do', {
		            userId: this.userId,
		            userPwd: this.userPwd,
		            userPwd2: this.userPwd2
		        }).then(response => {
		            if (response.data === 'success') {
		                alert('수정이 완료되었습니다.');
		                location.href = '../mypage/mypage_view.do'; // 수정 완료 후 이동할 페이지
		            } else {
		                alert('수정 중 오류가 발생했습니다. 다시 시도해주세요.');
		            }
		        }).catch(error => {
		            console.error('수정 요청 중 오류:', error);
		            alert('수정 요청 중 오류가 발생했습니다.');
		        });
		    } else {
		        // 필수 입력값이 없는 경우 경고 및 포커스 이동
		        if (!this.userId) {
		            this.$refs.userId.focus();
		        } else if (!this.userName) {
		            this.$refs.userName.focus();
		        } else if (!this.userPwd) {
		            this.$refs.userPwd.focus();
		        } else if (!this.userPwd2) {
		            this.$refs.userPwd2.focus();
		        } else if (this.userPwd !== this.userPwd2) {
		            alert('비밀번호가 일치하지 않습니다.');
		            this.userPwd = '';
		            this.userPwd2 = '';
		            this.$refs.userPwd.focus();
		        } else {
		            alert('입력값을 확인해주세요.');
		        }
		    }

		    e.preventDefault(); // 조건 충족 시 폼 제출을 중단합니다.
		}
 }
}).mount('#JoinUpdateApp')
</script>
</body>
</html>