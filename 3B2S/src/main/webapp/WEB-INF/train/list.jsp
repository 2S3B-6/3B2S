<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container-list {
    display: flex;
    gap: 20px;
    padding: 20px;
    max-width: 1200px;
    margin: 0 auto;
    transform: translateX(60px);
}
.left-column, .right-column {
    flex: 1;
}

.left-column {
    max-width: 60%;
}

.right-column {
    max-width: 35%;
}

.pagination-area {
    display: flex;
    justify-content: center; 
    align-items: center;
}

.pagination {
    display: flex;
    justify-content: center;
}

.pagination .page-link {
    background-color: white;
    color: #333;
    border-color: #ccc; 
    border: none !important;
}

.pagination:hover{
   cursor:pointer;
}

.pagination .page-item.active .page-link {
    background-color: #003366; 
    border-color: #003366; 
    color: white; 
    border: none !important;
}

.pagination .page-link:hover {
    background-color: #aaa; 
}

button.custom-btn {
    padding: 5px 20px;
    background-color: #003366;
    color: white; 
    border: none;
    border-radius: 20px; 
    cursor: pointer;
    transition: background-color 0.3s ease; 
}

button.custom-btn:hover {
    background-color: #000; 
}

button.small-btn {
    padding: 5px 10px; 
    background-color: #003366; 
    color: white; 
    border: none; 
    border-radius: 20px; 
    cursor: pointer; 
    transition: background-color 0.3s ease;
    font-size: 12px; 
}

button.small-btn:hover {
    background-color: #000; 
}

.contact-info img {
    width: 100%; 
    height: 100%; 
    object-fit: cover;
}
.left-column, .right-column {
    flex: 1;
}
.left-column {
    max-width: 60%;
}
.right-column {
    max-width: 25%; 
    margin-left: 30px
}
</style>
</head>
<body>
<section>
    <div class="train-page-banner">
        <div class="container">
        </div>
     </div>
     <div class="inner-information-text">
        <div class="container">
           <h3>TRAIN</h3>
           <ul class="breadcrumb">
              <li>Home</li>
              <li class="active"><a href="../train/reserve.do">Train</a></li>
           </ul>
        </div>
     </div>
  </section>
<section id="trainApp" class="contant main-heading team" style="margin-top: 0px">

   <div class="container-list">
   
      <div class="left-column" style="margin-top: 50px;">
      <h2 style="margin-top: 10px;">기차 예매</h2>
     
      
         <div class="tlist" style="margin-top: 120px;">
            <table v-else class="table table-hover">
               <thead>
                  <tr>
                     <th style="text-align: center;"><span>열차번호</span></th>
                     <th style="text-align: center;"><span>열차종류</span></th>
                     <th style="text-align: center;"><span>출발역</span></th>
                     <th style="text-align: center;"><span>도착역</span></th>
                     <th style="text-align: center;"><span>출발시간</span></th>
                     <th style="text-align: center;"><span>도착시간</span></th>
                     <th style="text-align: center;"><span>요금</span></th>
                     <th style="text-align: center;"><span>예매</span></th>
                  </tr>
               </thead>
               
               <tbody>
                 <div v-if="train_list.length === 0" style="text-align: center; margin-top: 100px;">
			      <p>기차를 조회해주세요.</p>
			   </div>
                  <tr v-for="vo in train_list" :key="vo.tno">
                     <td><span id="tno">{{vo.tno}}</span></td>
                     <td><span>{{vo.ttype}}</span></td>
                     <td><span>{{vo.sstart}}</span></td>
                     <td><span>{{vo.send}}</span></td>
                     <td><span id="tstart">{{vo.tstart}}</span></td>
                     <td><span id="tend">{{vo.tend}}</span></td>
                     <td><span id="price">{{vo.price.toLocaleString()}}원</span></td>
                     <td><button type="submit" class="small-btn" @click="openReserveWindow(vo.tno,vo.tstart,vo.tend,vo.price)">예매</button></td>
                  </tr>
               </tbody>
            </table>
         </div>
      </div>

    
      <div class="right-column">
         <div class="contact-info" style="text-align: center;height: 350px">
            <h3 style="margin-left: 15px;margin-top: -10px;margin-bottom: 8px;">기차 조회</h3>
            <div class="wrap">
               <div class="selectbar">
                  <div style="margin-bottom: 10px;">
                     <label style="margin-right: 10px; font-weight: bold;">기차종류:</label>
                     <select v-model="ttype2" style="width:120px;">
                        <option value="" disabled selected>===선택===</option>
                        <option>KTX</option>
                        <option>무궁화호</option>
                     </select>
                  </div>
                  <div style="margin-bottom: 15px;margin-left: 10px">
                     <label style="margin-right: 10px;font-weight: bold;">출발역:</label>
                     <select v-model="sstart2" style="width:120px;">
                        <option value="" disabled selected>===선택===</option>
                        <option>서울</option>
                        <option>인천</option>
                        <option>수원</option>
                        <option>창원</option>
                        <option>대구</option>
                        <option>광주</option>
                        <option>대전</option>
                        <option>부산</option>
                     </select>
                  </div>
                  <div style="margin-bottom: 10px;margin-left: 10px">
                     <label style="margin-right: 10px; font-weight: bold;">도착역:</label>
                     <select v-model="send2" style="width:120px;">
                        <option value="" disabled selected>===선택===</option>
                        <option v-for="station in filteredDestinations" :key="station" :value="station">{{station}}</option>
                     </select>
                  </div>
                  <div style="margin-bottom: 10px;margin-left: 10px">
                     <label style="margin-right: 10px; font-weight: bold;">출발일:</label>
                     <input type="date" v-model="departureDate" style="width:120px;">
                  </div>
                  <div style="margin-bottom: 10px;">
                     <label style="margin-right: 10px; font-weight: bold;">출발시간:</label>
                     <select v-model="tstart2" style="width:120px;">
                        <option value="" disabled selected>===선택===</option>
                        <option>9:00</option>
                        <option>12:00</option>
                        <option>15:00</option>
                        <option>18:00</option>
                        <option>21:00</option>
                        <option>23:00</option>
                     </select>
                  </div>
                  <button class="custom-btn" @click="search">조회</button>
               </div>
            </div>
         </div>
         
         <div class="contact-info" style="text-align: center; margin-top: 30px;margin-bottom: 30px;padding: 2px">
            <img src="../images/train-banner.jpg" alt="Train Banner">
         </div>
      </div>
   </div>
</section>
      <script>
      	let trainApp=Vue.createApp({
      		data(){
      			return {
      				train_list:[],
      				curpage:1,
      				totalpage:0,
      				startPage:0,
      				endPage:0,
      				ttype2:'',
      				sstart2:'',
      				send2:'',
      				tstart2:'',
      				departureDate:'',
      				stations: ['서울', '인천', '수원', '창원', '대구', '광주', '대전', '부산']
      			}
      		},
      		computed: {
      	        filteredDestinations() {
      	            return this.stations.filter(station => station!==this.sstart2);
      	        }
      	    },
      		methods:{
      			/* openReserveWindow() {
      			    const baseUrl = window.location.origin + "/web/train/reserve.do";
      			    window.open(baseUrl, 'reserveWindow', 'width=900,height=700,scrollbars=yes,resizable=no');
      			}, */
      			openReserveWindow(tno,tstart,tend,price) {
      			    console.log("Departure Date:", this.departureDate);
      			    console.log("Train Type:", this.ttype2);
      			    console.log("Start Station:", this.sstart2);
      			    console.log("End Station:", this.send2);
      			    console.log("Start Time:", this.tstart2);
      			    
      			   
      			    
      			    let params='ttype='+this.ttype2+'&sstart='+this.sstart2+'&send='+this.send2+'&tstart='
      			    +tstart+'&tend='+tend+'&price='+price+'&tno='+tno+'&departureDate='+this.departureDate;
      			    console.log(params)
      			    const fullUrl = `${window.location.origin}/web/train/reserve.do?`+params;
      			   /*  const plainVo = JSON.parse(JSON.stringify(vo)); // 프록시 객체를 일반 객체로 변환

      			    const params = new URLSearchParams({
      			        ttype: plainVo.ttype || this.ttype2 || '',         
      			        sstart: plainVo.sstart || this.sstart2 || '',        
      			        send: plainVo.send || this.send2 || '',            
      			        tstart: plainVo.tstart || this.tstart2 || '',        
      			        tend: plainVo.tend || '',            
      			        price: plainVo.price || '',          
      			        tno: plainVo.tno || '',              
      			        departureDate: this.departureDate || '' 
      			    }).toString(); */

      			    /* const fullUrl = `${window.location.origin}/web/train/reserve.do?${params}`; */
      			    console.log("Generated URL:", fullUrl); // URL 확인

      			    window.open(fullUrl, '_blank', 'width=900,height=620,scrollbars=yes,resizable=no');
      			},
      			search(){
      				if (!this.ttype2 || !this.sstart2 || !this.send2 || !this.departureDate || !this.tstart2) {
      					alert("모든 항목을 선택해주세요.")
      			        return; 
      			    }
      				this.curpage = 1;
      		        this.dataRecv();
      			},
      			prev(){
    				this.curpage=this.startPage-1
    				this.dataRecv()
    			},
    			next(){
    				this.curpage=this.endPage+1
    				this.dataRecv()
    			},
    			pageChange(page){
    				this.curpage=page
    				this.dataRecv()
    			},
    			range(start,end){
    				let arr=[]
    				let len=end-start
    				for(let i=0;i<=len;i++)
    				{
    					arr[i]=start
    					start++
    				}
    				return arr
    			},
    			dataRecv(){
    				axios.get('../train/find_vue.do',{
    					params:{
    						page:this.curpage,
    						ttype:this.ttype2,
    						sstart:this.sstart2,
    						send:this.send2,
    						tstart:this.tstart2
    					}
    				}).then(response=>{
    					console.log(response.data)
    					this.train_list=response.data.list
    					this.curpage=response.data.curpage
    					this.totalpage=response.data.totalpage
    					this.startPage=response.data.startPage
    					this.endPage=response.data.endPage
    				}).catch(error=>{
    					alert(error.response)
    					console.log(error.response)
    				})
    			}
      		}
      	}).mount('#trainApp')
      </script>
</body>
</html>