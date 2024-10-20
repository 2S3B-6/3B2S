<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.listBtn {
    display: flex;
    justify-content: center; 
    margin-top: 20px; 
    margin-bottom: 20px; 
}
.listBtn .btn {
    padding: 10px 20px;
    background-color: #003366;
    text-decoration: none;
    transition: background-color 0.3s ease;
}

.listBtn .btn:hover {
    background-color: #000;
}
.news-poster {
        margin-bottom: 20px; 
    }
</style>
</head>
<body>
   <section>
     <div class="news-page-banner">
         <div class="container">
         </div>
      </div>
      <div class="inner-information-text">
         <div class="container">
            <h3>News</h3>
            <ul class="breadcrumb">
               <li><a href="../main/main.do">Home</a></li>
               <li class="active"><a href="../news/list.do">News</a></li>
            </ul>
         </div>
      </div>
     </section>
     <section id="detailApp" style="margin-top: 50px;">
        <div class="row">
           <div class="container">
              <div class="col-md-9">
                 <div class="news-poster">
                    <div class="news-poster">
                       <img :src="vo.poster" class="img-responsive" alt="#" style="width: 1100px;" />
                    </div>
                    <div class="news-cont">
                       <div class="post-people">
                          <div class="left-profile">
                             <div class="post-info">
                                <img src="../images/news-profile.png" alt="#" />
                                <span>
                                   <h2>{{vo.author}}</h2>
                                   <h5>{{vo.ftime}}</h5>
                                </span>
                             </div>
                             <span class="share"></span>
                          </div>
                       </div>
                       <div class="post-heading" style="margin-bottom: 30px;">
                          <h2>{{vo.title}}</h2>
                          <p>{{vo.content}}</p>
                          <div class="listBtn">
                             <a class="btn" href="../news/list.do">목록</a>
                          </div>
                       </div>
                     </div>
                      <div class="feature-cont">
                       <h2>댓글</h2>
                       <div>
                        <div class="post-people" v-for="vo in reply_list">
                           <div class="left-profile" v-if="vo.group_tab===0">
							  <div class="post-info">
							    <img src="../images/news-profile.png" alt="">
							    <div class="comment-content">
							      <h4>{{vo.name}}</h4>
							      <h5>{{vo.dbday}}</h5>
							      <p>{{vo.msg}}</p>
							      
							      <button v-if="sessionId===vo.id" class="btn-xs btn-danger update" style="margin-left: 2px" @click="replyUpdateForm(vo.cno)" :id="'u'+vo.cno">Update</button>
							      <button v-if="sessionId===vo.id" class="btn-xs btn-info" style="margin-left: 2px" @click="replyDelete(vo.cno)">Delete</button>
							      <button class="active insert" v-if="sessionId!=''" style="margin-left: 2px" @click="replyForm(vo.cno)" :id="'i'+vo.cno">Reply</button>
							      <button v-if="sessionId!==vo.id && sessionId!==''" style="margin-left: 2px">Like</button>
							      
							      <!-- 댓글 입력 -->
							      <table class="table ins" style="display:none" :id="'in'+vo.cno">
							        <tr>
							          <td>
							            <textarea rows="3" cols="60" style="float: left" :id="'msg'+vo.cno"></textarea>
							            <input type="button" value="댓글" style="float: left; background-color: #003366; color: white; width: 80px; height:85px" @click="replyReplyInsert(vo.cno)">
							          </td>
							        </tr>
							      </table>
							
							      <!-- 댓글 수정 -->
							      <table class="table ups" style="display: none" :id="'up'+vo.cno">
							        <tr>
							          <td>
							            <textarea rows="3" cols="60" style="float: left" :id="'umsg'+vo.cno">{{vo.msg}}</textarea>
							            <input type="button" value="수정" style="float: left; background-color: #003366; color: white; width: 80px; height:85px" @click="replyUpdate(vo.cno)">
							          </td>
							        </tr>
							      </table>
							    </div>
							  </div>
							  <span class="share"></span>
							</div>
                          <div class="children" v-if="vo.group_tab===1">
                           <div class="post-people">
                            <div class="left-profile">
                              <div class="post-info">
                                 <img src="../images/news-profile.png" alt="" >
                                <div class="comment-content">
                                    <h4>{{vo.name}}</h4>
                                    <h5>{{vo.dbday}}</h5>
                                    <p>{{vo.msg}}</p>
                                    <button v-if="sessionId===vo.id" class="btn-xs btn-danger update" style="margin-left: 2px" @click="replyUpdateForm(vo.cno)" :id="'u'+vo.cno">Update</button>
                                    <button v-if="sessionId===vo.id" class="btn-xs btn-info" style="margin-left: 2px" @click="replyDelete(vo.cno)">Delete</button>
                                    <button v-if="sessionId!==vo.id && sessionId!==''" style="margin-left: 2px">Like</button>
                                   <table class="table ups" style="display: none" :id="'up'+vo.cno">
                                     <tr>
                                      <td>
                                       <textarea rows="3" cols="60" style="float: left" :id="'umsg'+vo.cno" >{{vo.msg}}</textarea>
                                       <input type=button value="수정" style="float: left;background-color: #003366;color: white;width: 80px;height:85px"
                                         @click="replyUpdate(vo.cno)">
                                       </td>
                                    </tr>
                                   </table>
                                </div>
                              </div>
                              <span class="share"></span>
                           </div>
                           </div>
                          </div> 
                        </div>
                       </div>
                       
                       <c:if test="${sessionScope.userId!=null }">
                         <div class="feature-cont">
                             <div class="comment-form">
                                <table class="table">
                                 <tr>
                                   <td>
                                    <textarea rows="4" cols="70" style="float: left" ref="msg" v-model="msg"></textarea>
                                    <input type=button value="댓글" style="float: left;background-color: #003366;color: white;width: 85px;height:87px"
                                      @click="replyInsert()">
                                   </td>
                                 </tr>
                                </table>
                             </div>
                           </div>
                        </c:if>
                    </div>
                 </div>
              </div>
              <div class="col-md-3">
                 <!-- <div class="blog-sidebar">
                    <div class="search-bar-blog">
                       <form>
                          <input type="text" placeholder="search" />
                          <button><i class="fa fa-search" aria-hidden="true"></i></button>
                       </form>
                    </div>
                 </div> -->
                 <div class="blog-sidebar">
                     <h4 class="heading">Top Categories</h4>
                     <div class="category-menu">
                        <ul>
                           <li><a href="#">Cricket</a></li>
                           <li><a href="#">Football</a></li>
                           <li><a href="#">Hockey</a></li>
                           <li><a href="#">Tennis</a></li>
                           <li><a href="#">Basketball</a></li>
                           <li><a href="#">Golf</a></li>
                           <li><a href="#">Cycling</a></li>
                           <li><a href="#">Motorsports</a></li>
                        </ul>
                     </div>
                  </div>
                 <div class="blog-sidebar">
                     <h4 class="heading">Popular News</h4>
                     <div class="category-menu">
                        <ul>
                           <li>
                              <span><img src="../images/profile-img2.png" alt="#"></span>
                              <span>
                                 <p>Two touch penalties, imaginary cards</p>
                                 <p class="date">22 Feb, 2016</p>
                              </span>
                           </li>
                        </ul>
                     </div>
                  </div>
                 <aside id="sidebar" class="right-bar">
	                 <div class="banner">
	                    <img class="img-responsive" src="../images/img-02.jpg" alt="#">
	                 </div>
	              </aside>
	              <aside id="sidebar" class="right-bar">
	                 <div class="banner">
	                    <img class="img-responsive" src="../images/img-03.jpg" alt="#">
	                 </div>
	              </aside>
              </div>
           </div>
        </div>
     </section>
    <script>
    let detailApp=Vue.createApp({
    	data(){
    		return {
    			vo:{},
    			nno:${nno},
    			
    			rno:${nno},
                reply_list:[],
                curpage:1,
                totalpage:0,
                endPage:0,
                startPage:0,
                type:1,
                sessionId:'${sessionId}',
                msg:'',
                isReply:false,
                upReply:false
    		}
    	},
    	mounted(){
    		axios.get('../news/detail_vue.do',{
    			params:{
    				nno:this.nno
    			}
    		}).then(response=>{
    			console.log(response.data)
    			this.vo=response.data
    		}).catch(error=>{
    			console.log(error.response)
    		})
    		
    		this.dataRecv()
    	  },
    	  methods:{
    		  replyUpdate(cno){
                  let msg=$('#umsg'+cno).val()
                  if(msg.trim()===""){
                      $('#umsg'+cno).focus()
                      return
                  }
                  axios.post('../comment/update_vue.do',null,{
                      params:{
                          cno:cno,
                          nno:this.nno,
                          type:this.type,
                          msg:msg
                      }
                  }).then(response=>{
                      console.log(response.data)
                      this.reply_list=response.data.list
                      this.curpage=response.data.curpage
                      this.totalpage=response.data.totalpage
                      this.startPage=response.data.startPage
                      this.endPage=response.data.endPage
                      $('#umsg'+cno).val("")
                      $('#up'+cno).hide()
                      $('#u'+cno).text("Update")
                  }).catch(error=>{
                      console.log(error.response)
                  })
              },
              // 댓글 삭제
              replyDelete(cno){
                  axios.get('../comment/delete_vue.do',{
                      params:{
                          cno:cno,
                          nno:this.nno,
                          type:this.type
                      }
                  }).then(response=>{
                      console.log(response.data)
                      this.reply_list=response.data.list
                      this.curpage=response.data.curpage
                      this.totalpage=response.data.totalpage
                      this.startPage=response.data.startPage
                      this.endPage=response.data.endPage
                  }).catch(error=>{
                      console.log(error.response)
                  })
              },
              // 대댓글 삽입
              replyReplyInsert(cno){
                  let msg=$('#msg'+cno).val()
                  if(msg.trim()===""){
                      $('#msg'+cno).focus()
                      return
                  }
                  axios.post('../comment/reply_insert_vue.do',null,{
                      params:{
                          nno:this.nno,
                          type:this.type,
                          msg:msg,
                          cno:cno
                      }
                  }).then(response=>{
                      console.log(response.data)
                      this.reply_list=response.data.list
                      this.curpage=response.data.curpage
                      this.totalpage=response.data.totalpage
                      this.startPage=response.data.startPage
                      this.endPage=response.data.endPage
                      $('#msg'+cno).val('')
                      $('#in'+cno).hide()
                      $('#i'+cno).text("Reply")
                  }).catch(error=>{
                      console.log(error.response)
                  })
              },
              // 댓글 업데이트 폼
              replyUpdateForm(cno){
                  $('.ins').hide()
                  $('.ups').hide()
                  $('.update').text('Update')
                  $('.insert').text('Reply')
                  if(this.upReply===false){
                      this.upReply=true
                      $('#up'+cno).show()
                      $('#u'+cno).text("Cancel")    
                  }
                  else{
                      this.upReply=false
                      $('#up'+cno).hide()
                      $('#u'+cno).text("Update")    
                  }
              },
              // 댓글 입력 폼
              replyForm(cno){
                  $('.ins').hide()
                  $('.ups').hide()
                  $('.update').text('Update')
                  $('.insert').text('Reply')
                  if(this.isReply===false){
                      this.isReply=true
                      $('#in'+cno).show()
                      $('#i'+cno).text("Cancel")
                  } 
                  else{
                      this.isReply=false
                      $('#in'+cno).hide()
                      $('#i'+cno).text("Reply")
                  }
              },
              // 댓글 삽입
              replyInsert(){
                  if(this.msg===""){
                      this.$refs.msg.focus()
                      return
                  }
                  axios.post('../comment/insert_vue.do',null,{
                      params:{
                          nno:this.nno,
                          type:this.type,
                          msg:this.msg
                      }
                  }).then(response=>{
                      console.log(response.data)
                      this.reply_list=response.data.list
                      this.curpage=response.data.curpage
                      this.totalpage=response.data.totalpage
                      this.startPage=response.data.startPage
                      this.endPage=response.data.endPage
                      this.msg=''
                  }).catch(error=>{
                      console.log(error.response)
                  })
              },
              // 댓글 데이터 받기
              dataRecv(){
                  axios.get('../comment/list_vue.do',{
                      params:{
                          nno:this.nno, 
                          type:this.type,
                          page:this.curpage
                      }
                  }).then(response=>{
                      console.log(response.data)
                      this.reply_list=response.data.list
                      this.curpage=response.data.curpage
                      this.totalpage=response.data.totalpage
                      this.startPage=response.data.startPage
                      this.endPage=response.data.endPage
                  }).catch(error=>{
                      console.log(error.response)
                  })
              }
    	  }
    	}).mount('#detailApp')
    </script>
</body>
</html>