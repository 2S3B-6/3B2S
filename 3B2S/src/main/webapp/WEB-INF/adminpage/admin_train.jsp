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
    max-width: 1200px; /* ������ �ִ� �ʺ� */
    margin: 0 auto; /* ��� ���� */
    padding: 20px; /* ���� ���� */
    border: 2px solid #003366; /* �׵θ� �߰� */
    border-radius: 10px; /* �𼭸� �ձ۰� */
    background-color: #fff; /* ���� */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* �׸��� ȿ�� */
}
</style>
</head>
<body>
<div id="mypageApp" class="mypage-container">
	   <table class="table">
	    <tr>
	      <td class="text-center" colspan="7">
	        <h4>���� ���� ����</h4>
	      </td>
	    </tr>
	    <tr >
	    	<th colspan="6" class="text-right">
	    		���� �˻� : <input class="" type="text" style="text-transform: uppercase;" size="20" placeholder="" ref="" v-model="" @keydown.enter=adminCnoList() >
	    	</th>
	    </tr>
	    <tr>
	      <th class="text-center">���� ����</th>
	      <th class="text-center">�����</th>
	      <th class="text-center">��߿�/������</th>
	      <th class="text-center">��߽ð�/�����ð�</th>
	      <th class="text-center">�¼�</th>
	      <th class="text-center">�ο�</th>
	      <th class="text-center">�ݾ�</th>
	    </tr>
	    <tr v-for="vo in train_list">
	      <td class="text-center">{{vo.ttype}}</td>
	      <td class="text-center">{{vo.tday}}</td>
	      <td class="text-center">{{vo.sstart}}/{{vo.send}}</td>
	      <td class="text-center">{{vo.tstart}}/{{vo.tend}}</td>
	      <td class="text-center">{{vo.tseat}}</td>
	      <td class="text-center">{{vo.tinwon}}</td>
	      <td class="text-center">{{formatPrice(vo.totalprice)}}��</td>
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
		            return value.toLocaleString(); // ��ǥ �������� ��ȯ
		        }
		    }
	 }).mount("#mypageApp");
	 </script>
</body>
</html>