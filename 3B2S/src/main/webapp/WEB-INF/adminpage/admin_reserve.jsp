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

/* ����� ��ü ������ �ʺ�� Ȯ�� */
.inner-page-banner {
    width: 100%; /* ��ü �ʺ� */
    background-color: #f5f5f5; /* ��� ���� */
    padding: 20px 0; /* ���� �е� */
    box-sizing: border-box;
}

/* ������������ ���δ� ū �׸� �ڽ� */
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

/* ���̺� ��Ÿ�� */
.table {
    width: 100%;
    border-collapse: collapse; /* ���̺� �� ���� ���ֱ� */
}

.table th, .table td {
    padding: 12px 15px; /* ���̺� �� ���� ���� */
    border-bottom: 1px solid #ddd; /* �� ���̿� ���м� */
    text-align: center;
}

.table th {
    background-color: #f7f7f7; /* ��� ���� */
    font-weight: bold;
}

.table td a {
    color: #333;
    text-decoration: none;
}

.table td a:hover {
    text-decoration: underline;
}

/* ��ư ��Ÿ�� */
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

/* ������ �̵� ��ư */
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
   		<h4>���� ����</h4>
   	</td>
   </tr>
    <tr>
      <th class="text-center">��ȣ</th>
      <th class="text-center"></th>
      <th class="text-center">��ü��</th>
      <th class="text-center">������</th>
      <th class="text-center">����</th>
      <th class="text-center">����</th>
      <th class="text-center">�����</th>
      <th class="text-center">���</th>
    </tr>
    <tr v-for="vo in reserve_list">
      <td class="text-center">{{vo.rno}}</td>
      <td class="text-center">
        <img :src="vo.hvo.poster" style="width: 30px;height: 30px">
      </td>
      <td class="text-center">{{vo.hvo.name}}</td>
      <td class="text-center">{{vo.rday}}</td>
      <td class="text-center">{{vo.rroom}}</td>
      <td class="text-center">{{vo.rprice}}��</td>
      <td class="text-center">{{vo.dbday}}</td>
      <td class="text-center">
        <button class="btn-xs btn-success" v-if="vo.isreserve===1" @click="hotelInfo(vo.hno,vo.rno)">����Ϸ�</button>
        <button class="btn-xs btn-danger" v-else >������</button>
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
		  // ������ ������ �����Ͱ� ���� ��� params => ?
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