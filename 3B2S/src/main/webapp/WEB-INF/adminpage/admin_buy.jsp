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
</head>
<body>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<body>
	<div id="adminApp">
	   <table class="table">
	    <tr>
	      <td colspan="6">
	        <h4>구매관리</h4>
	      </td>
	    </tr>
	    <tr >
	    	<th colspan="6" class="text-right">
	    		주문번호 입력 : <input class="" type="text" style="text-transform: uppercase;" size="20" ref="fd" v-model="fd" @keydown.enter=adminCnoList() >
	    	</th>
	    </tr>
	    <tr>
	      <th class="text-center">주문번호</th>
	      <th class="text-center">상품번호</th>
	      <th class="text-center">수량</th>
	      <th class="text-center">구매일</th>
	      <th class="text-center">비고</th>
	    </tr>
	    <tr v-for="cart_vo in cart_list">
	      <td class="text-center">{{cart_vo.cno}}</td>
	      <td class="text-center">{{cart_vo.gno}}</td>
	      <td class="text-center">{{cart_vo.account}}</td>
	      <td class="text-center">{{cart_vo.dbday}}</td>
	      <td class="text-center">
	      	<button class="bbtn btn-sm" @click="goodsDetail(cart_vo.gno)">주문상세</button>
	      </td>
	    </tr>
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
                            <tr v-for="cart_vo in cart_list">
                              <td style="color:pink">가격 x 수량</td>
                              <td>{{detail_data.price}} x {{cart_vo.account}}</td>
                            </tr>
                            <tr>
                              <td style="color:gray">배송</td>
                              <td>{{detail_data.simple_delivery}}</td>
                            </tr>
                            <tr>
                              <td style="color:gray">사이즈</td>
                              <td>{{detail_data.gsize}}</td>
                            </tr>
                            <tr>
                            	<td></td>
                            	<td><button class="bbtn btn-sm" @click="goodsCancel(cart_vo.cno)">구매 취소</button></td>
                            </tr>
                      </table>
	   </div>
	   
	</div>
	<script>
let adminApp=Vue.createApp({
	data(){
		return {
			cart_list:[],
			detail_data:{},
			isShow:false,
			fd:''
		}
	},
	mounted(){
		axios.get('../adminpage/buy_vue.do',{
			fd:this.fd
		})
		.then(response=>{
			this.cart_list=response.data
		}).catch(error=>{
			console.log(error.response)
		});
		
		
	},
	methods:{
		goodsCancel(cno){
			axios.get('../kbogoods/cart_cancel_vue2.do',{
				params:{
					cno:cno
				}
			}).then(response=>{
				this.cart_list=response.data
				
			}).catch(error=>{
				console.log(error.response)
			});
			
			
		},
	    goodsDetail(gno) {
		      // 현재 보고 있는 상품을 다시 클릭하면 상세보기 접기
		      if (this.currentGno === gno) {
		        this.isShow = !this.isShow;  // 같은 상품이면 토글
		      } else {
		        this.isShow = true;          // 다른 상품이면 상세보기 열기
		        this.currentGno = gno;       // 현재 상품 번호 저장
		        axios.get('../kboGoods/detail_vue.do', {
		          params: {
		            gno: gno
		          }
		        }).then(response => {
		          this.detail_data = response.data;
		        }).catch(error => {
		          console.log(error.response);
		        });
		      }
		    },
		    adminCnoList(){
		    	axios.get('../adminpage/buy_vue.do')
				.then(response=>{
					this.cart_list=response.data
					console.log(response.data)
				}).catch(error=>{
					console.log(error.response)
				});
		    }
		  }
		}).mount("#adminApp");
</script>
</body>
</html>