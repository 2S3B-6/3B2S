<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">

</style>
</head>
<body>
<div class="top_space"  style="height: 220px;"></div>
<div class="breadcumb-area">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>ȸ������</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="breadcumb-nav">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    
                </div>
            </div>
        </div>
    </div>
    <section class="single_blog_area section_padding_20" id="joinApp">
        <div class="container">
            <div class="row justify-content-center">
              <form method="post" action="../member/join_ok.do" @submit="submitForm()">
			    <table class="table">
			     <tr>
			      <th class="text-right" width="30%">ID</th>
			      <td width="70%" >
			       <input type="text" size=15 class="input-sm" v-bind:readonly="isReadOnly" name="userId" ref="userId" v-model="userId">
			       &nbsp;
			       <input type="button" value="�ߺ�üũ" class="btn-sm btn-danger" @click="idCheck()">
			       <p>{{idOk}}</p>
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="30%" style="border: none;">��й�ȣ</th>
			      <td width="70%" style="border: none;">
			       <input type="password" size=15 class="input-sm" name="userPwd" ref="userPwd" v-model="userPwd" @keyup="pwdValidate()">
			       <div class="text-center">
			       <p>{{pwdOk}}</p>
			       </div>
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="40%" style="border: none;">��й�ȣ Ȯ��</th>
			      <td width="60%" style="border: none;">
			       <input type="password" size=15 class="input-sm" name="userPwd" ref="userPwd2" v-model="userPwd2" @keyup="pwdValidate2()">

			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="30%" style="border: none;">�̸�</th>
			      <td width="70%" style="border: none;">
			       <input type="text" size=15 class="input-sm" name="userName" ref="userName" v-model="userName">
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="30%" style="border: none;">����</th>
			      <td width="70%" style="border: none;">
			       <input type="radio" name="sex" value="����" checked v-model="sex">����
			       <input type="radio" name="sex" value="����" v-model="sex">����
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="30%" style="border: none;">�������</th>
			      <td width="70%" style="border: none;">
			       <input type="date" size=20 class="input-sm" name="birthday" v-model="birthday" ref="birthday">
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="30%" style="border: none;">�̸���</th>
			      <td width="70%" style="border: none;">
			       <input type="text" size=50 class="input-sm" name="email" ref="email" v-model="email"
			       >
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="30%" style="border: none;">�����ȣ</th>
			      <td width="70%" style="border: none;">
			       <input type="text" size=10 class="input-sm" name="post" readonly ref="post" v-model="post">
			       &nbsp;
			       <input type=button class="btn-sm" value="�����ȣ�˻�" @click="postFind()" >
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="30%" style="border: none;">�ּ�</th>
			      <td width="70%" style="border: none;">
			       <input type="text" size=50 class="input-sm" name="addr1" readonly ref="addr1" v-model="addr1">
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right" width="30%" style="border: none;">���ּ�</th>
			      <td width="70%" style="border: none;">
			       <input type="text" size=50 class="input-sm" name="addr2" ref="addr2" v-model="addr2">
			      </td>
			     </tr>
			     <tr>
			      <th class="text-right " width="30%">��ȭ��ȣ</th>
			      <td width="70%">
			       <select class="input-sm" name="phone1" v-model="phone1">
			        <option>010</option>
			        <option>017</option>
			        <option>011</option>
			       </select>
			       <input type="text" size=20 class="input-sm" name="phone2" ref="phone2" v-model="phone2">
			      </td>
			     </tr>
			     <tr>
			       <td colspan="2" class="text-center">
			        <input type="submit" value="ȸ������" class="btn-sm ">
			        &nbsp;&nbsp;
			        <input type=button value="���" class="btn-sm " onclick="javascript:history.back()">
			       </td>
			     </tr>
			    </table>
			    </form>
            </div>
        </div>
    </section>
    
<script>
let joinApp=Vue.createApp({
 data(){
	 return {
		 userId:'',
		 idOk:'',
		 isReadOnly:false,
		 post:'',
		 addr1:'',
		 addr2:'',
		 userName:'',
		 phone1:'',
		 phone2:'',
		 birthday:'',
		 userPwd:'',
		 userPwd2:'',
		 email:'',
		 sex:'',
		 pwdOk:''
	 }
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
			this.pwdOk='��й�ȣ�� 8�ڸ�~20�ڸ� �̳��� �Է��ϼ���' 
			return
		 }
		 
		 else if(pwd.search(/\s/)!=-1)
	     {
			 this.pwdOk="��й�ȣ�� ������� �Է��ϼ���"
			 return
	     }
		 else if(num<0 || eng<0)
		 {
			 this.pwdOk="��й�ȣ�� ����,���ڸ� ȥ���ؼ� �Է��ؾ� �մϴ�"
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
			 this.pwdOk='��й�ȣ�� ��ġ���� �ʽ��ϴ�'
		 }
		 else
		 {
			 this.pwdOk=''
		 }
	 },
	 submitForm(e){
		 alert("ȸ�������� �Ϸ�Ǿ����ϴ�")
		 if(this.userId && this.userName && this.userPwd && this.sex 
			 && this.userPwd2 && this.birthday && this.post 
			 && this.addr1 && this.addr2 && this.email && this.idOk!='' && this.pwdOk!=''
		   )
		 {
			 alert("���� ����")
			 return true
		 }
		 
		 if(this.userId===''||this.idOk!='')
		 {
			 this.$refs.userId.focus()
		 }
		 else if(this.userName==='')
		 {
			 this.$refs.userName.focus()
		 }
		 else if(this.userPwd==='')
		 {
			 this.$refs.userPwd.focus()
		 }
		 else if(this.userPwd2==='')
		 {
			 this.$refs.userPwd2.focus()
		 }
		 else if(this.userPwd!==this.userPwd2)
		 {
			 this.userPwd=''
			 this.userPwd2=''
		 }
		 else if(this.phone2==='')
		 {
			 this.$refs.phone2.focus()
		 }
		 else if(this.email==='')
		 {
			 this.$refs.email.focus()
		 }
		 e.preventDefault()
	 },
	 postFind(){
		 let _this=this
		 new daum.Postcode({
			 oncomplete:function(data)
			 {
				 _this.post=data.zonecode
				 _this.addr1=data.address
			 }
		 }).open()
	 },
	 idCheck(){
		 if(this.userId==='')
		 {
			 this.$refs.userId.focus()
			 this.idOk='���̵� �Է����ֽʽÿ�'
			 return
		 }
		 axios.get('../member/idcheck_vue.do',{
			 params:{
				 userId:this.userId
			 }
		 }).then(response=>{
			 console.log(response.data)
			 if(response.data===0)
			 {
				 this.idOk='��밡���� ���̵��Դϴ�'
				 this.isReadOnly=true
				 
			 }
			 else
			 {
				 this.idOk='�̹� ������� ���̵��Դϴ�'
				 this.userId=''
				 this.$refs.userId.focus()
			 }
		 }).catch(error=>{
			 console.log(error.response)
		 })
	 }
 }
}).mount('#joinApp')
</script>
</body>
</html>