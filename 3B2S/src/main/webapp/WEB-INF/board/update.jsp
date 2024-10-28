<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
/* 전체 컨테이너 */
.board-container {
    width: 100%;
    max-width: 600px; /* 적당한 최대 너비 */
    margin: 0 auto; /* 가운데 정렬 */
    padding: 20px; /* 내부 여백 */
    border: 2px solid #003366; /* 칠판처럼 테두리 추가 */
    border-radius: 10px; /* 모서리 둥글게 */
    background-color: #fff; /* 배경색 */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
    margin-top :50px;
    margin-bottom :50px;
    
}

/* 테이블 스타일 */
.table {
   width: 100%;
   border-collapse: collapse;
}

.table th, .table td {
   padding: 12px 15px;
   text-align: left;
}

.table th {
   background-color: #f7f7f7;
   font-weight: bold;
}

.table td {
   background-color: white;
}

/* 글쓰기, 취소 버튼 */
.text-center .btn {
   margin-left: 5px;
}

.breadcrumb {
	background-color: transparent;
	padding:2px;
	margin-top:2px;
}

.inner-page-banner {
 
 background-color: #fff;

}
</style>
<script src="https://unpkg.com/vue@3"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
<section id="top">
   <div class="inner-page-banner">
      <div class="inner-information-text">
        <div class="container">
            <h3>자유게시판</h3>
            <ul class="breadcrumb">
                <li><a href="../main/main.do">Home</a></li>
                <li class="active">board</li>
            </ul>
        </div>
    </div>
   </div>
</section>

<section id="updateApp">
   <div class="container">
      <div class="board-container">
         <h3 class="text-center">수정하기</h3>
         <table class="table">
            <tr>
               <th class="text-right" width="15%">제목</th>
               <td width="85%">
                  <input type="text" size="45" class="input-sm" ref="subject" v-model="subject">
               </td>
            </tr>
            <tr>
               <th class="text-right" width="15%">내용</th>
               <td width="85%">
                  <textarea rows="10" cols="48" ref="content" v-model="content"></textarea>
               </td>
            </tr>
            <tr>
               <td colspan="2" class="text-center">
                  <button class="btn" @click="boardUpdate()">수정하기</button>
                  <input type="button" class="btn" value="취소" onclick="javascript:history.back()">
               </td>
            </tr>
         </table>
      </div>
   </div>
</section>

<script>
   let updateApp = Vue.createApp({
      data() {
         return {
            no: ${no},
            subject: '',
            content: ''
         }
      },
      mounted() {
         axios.get('../board/update_vue.do', {
            params: {
               no: this.no
            }
         }).then(response => {
            console.log(response.data)
            this.subject = response.data.subject
            this.content = response.data.content
         }).catch(error => {
            console.log(error.response)
         })
      },
      methods: {
         boardUpdate() {
 			if(this.subject===""){
 				this.$refs.subject.focus()
 				return
 			}
 			if(this.content===""){
 				this.$refs.content.focus()
 				return
 			}
 			
 			axios.post('../board/update_ok_vue.do', null, {
 				params:{
 					no:this.no,
 					subject:this.subject,
 					content:this.content
 				}	
 			}).then(response=>{
 				if(response.data==="yes"){
 					location.href="../board/detail.do?no="+this.no
 				}
 				else {
 					alert(response.data)
 				}
 			}).catch(error=>{
 				console.log(error.response)
 			})
 		}
      }
   }).mount('#updateApp');
</script>

</body>
</html>
