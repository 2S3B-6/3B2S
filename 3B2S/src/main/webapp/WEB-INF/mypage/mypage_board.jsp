<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.bbtn {
 background: #003366;
 color: #fff;
 border-radius: 50px;
 font-weight: 500;
 transition: ease all 1s;
 margin-right: 3px;
}
</style>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<body>
	<div id="mypageApp">
	   <table class="table">
	    <tr>
	      <td class="text-center" colspan="6">
	        <h4>게시판 관리</h4>
	      </td>
	    </tr>
	   <table class="table">
                    <thead>
	    <tr>
         <th width="10%">번호</th>
         <th width="45%">제목</th>
         <th width="15%">이름</th>
         <th width="20%">작성일</th>
         <th width="10%">조회수</th>
	    </tr>
                    </thead>
                    <tbody>
                        <tr v-for="vo in board_list">
                            <td>{{ vo.no }}</td>
                            <td>
                                <a :href="'../board/detail.do?no=' + vo.no">{{ vo.subject }}</a>
                                <sup v-if="today === vo.dbday"><img src="../img/icon/new.gif"></sup>
                            </td>
                            <td>{{ vo.name }}</td>
                            <td>{{ vo.dbday }}</td>
                            <td>{{ vo.hit }}</td>
                        </tr>
                    </tbody>
                </table>
	   
	   </table>
	   <div v-if="isShow">
	     <h4>상품 상세보기</h4>
	     <table class="table">
                           <tr>
                             <td width=30% class="text-center" rowspan="8">
                               <img :src="detail_data.poster" style="width: 100%">
                             </td>
                             <td colspan="2">
                               <h4>{{detail_data.name}}</h4>
                             </td>
                            </tr>
                            <tr>
                              <td colspan="2">
                               {{detail_data.sub}}
                             </td>
                            </tr>
                            <tr>
                              <td style="color:pink">가격</td>
                              <td>{{detail_data.price}}</td>
                            </tr>
                            <tr>
                              <td style="color:gray">배송</td>
                              <td>{{detail_data.delivery}}</td>
                            </tr>
                      </table>
	   </div>
	   
	</div>
	<script>
	let mypageApp=Vue.createApp({
		data(){
			return {
	            board_list: [],
	            curpage: 1,
	            totalpage: 0,
	            today: ''
			}
		},
		mounted(){
			this.dataRecv();
		},
		methods:{
	        dataRecv() {
	            axios.get('../board/list_vue.do', {
	                params: {
	                    page: this.curpage
	                }
	            }).then(response => {
	                this.board_list = response.data.list;
	                this.curpage = response.data.curpage;
	                this.totalpage = response.data.totalpage;
	                this.today = response.data.today;
	            }).catch(error => {
	                console.log(error.response);
	            });
	        }


	}).mount("#mypageApp")
	</script>
</body>
</html>