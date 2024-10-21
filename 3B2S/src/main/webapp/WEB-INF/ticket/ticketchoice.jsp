<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<section id="top">
         
         <div class="inner-information-text">
            <div class="container">
               <h3>Blog</h3>
               <ul class="breadcrumb">
                  <li><a href="../main/main.do">Home</a></li>
                  <li class="active">티켓</li>
               </ul>
            </div>
         </div>
      </section>
      <section class="single_blog_area section_padding_80" id="reserveApp">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-12">
                    <div class="row no-gutters">
                    	<table class="table">
                    		<tr>
                    			<td width="20%" height="500">
                    				<table class="table">
                    					<tr>
                    						<td colspan="2">
                    							<h4>맛집 정보</h4>
                    						</td>
                    					</tr>
                    					<tr>
                    						<td colspan="2">
                    							<button class="btn-xs btn-success" @click="typeChange('한식')">그린존</button>
                    							<button class="btn-xs btn-info" @click="typeChange('양식')">레드존</button>
                    							<button class="btn-xs btn-danger" @click="typeChange('중식')">네이비존</button>
                    							<button class="btn-xs btn-primary" @click="typeChange('일식')">익사이팅존</button>
                    							<button class="btn-xs btn-warning" @click="typeChange('분식')">VIP존</button>
                    						</td>
                    					</tr>
                    				</table>
                    				<div style="overflow-y:auto;height:500px">
                    					<table class="table">
                    						<tr>
                    							<th class="text-center"></th>
                    							<th class="text-center">업체명</th>
                    						</tr>
                    						<tr v-for="vo in food_list" class="food-click" @click="foodSelect(vo.fno,vo.poster,vo.name)">
                    							<td class="text-center">
                    								<img :src="'http://www.menupan.com'+vo.poster" style="width:35px;height:35px">
                    							</td>
                    							<td>{{vo.name}}</td>
                    						</tr>
                    						
                    					</table>
                    				</div>
                    			</td>
                    			<td width="45%" height="500">
                    				<table class="table">
                    					<tr>
                    						<td>
                    							<h4>예약일 정보</h4>
                    						</td>
                    					</tr>
                    					<tr v-show="isDate">
                    						<td>
                    							<div id="calendar"></div>
                    						</td>
                    					</tr>
                    				</table>
                    			</td>
                    			<td width="35%" height="500" rowspan="2">
                    				<table class="table">
                    					<tr>
                    						<td colspan="2">
                    							<h4>예약 정보</h4>
                    						</td>
                    					</tr>
                    					<tr>
                    						<td colspan="2" class="text-center">
                    							<img :src="image" style="width:200px;height:150px">
                    						</td>
                    					</tr>
                    					<tr>
                    						<th width="30%" class="text-center">업체명</th>
                    						<td width="70%">{{name}}</td>
                    					</tr>
                    					<tr>
                    						<th width="30%" class="text-center">예약일</th>
                    						<td width="70%">{{day}}</td>
                    					</tr>
                    					<tr>
                    						<th width="30%" class="text-center">시간</th>
                    						<td width="70%">{{time}}</td>
                    					</tr>
                    					<tr>
                    						<th width="30%" class="text-center">인원</th>
                    						<td width="70%">{{inwon}}</td>
                    					</tr>
                    					<tr v-show="isReserveBtn">
                    						<td colspan="2" class="text-center">
                    							<button class="btn-lg btn-danger" @click="reserve()">예약</button>
                    						</td>
                    					</tr>
                    				</table>
                    			</td>
                    		</tr>
                    		<tr>
                    			<td width="30%" height="150">
                    				<table class="table">
                    					<tr>
                    						<td>
                    							<h4>시간 정보</h4>
                    						</td>
                    					</tr>
                    					<tr v-show="isTime">
                    						<td class="text-center">
                    							<span class="btn btn-xs btn-success" v-for="t in time_list" style="margin:1px"
                    							  @click="timeSelect(t)">
                    								{{t}}
                    							</span>
                    						</td>
                    					</tr>
                    				</table>
                    			</td>
                    			<td width="35%" height="150">
                    				<table class="table">
                    					<tr>
                    						<td>
                    							<h4>인원 정보</h4>
                    						</td>
                    					</tr>
                    					<tr v-show="isInwon">
                    						<td class="text-center">
                    							<span class="btn btn-xs btn-warning" v-for="i in inwon_list" style="margin-left:1px"
                    							  @click="inwonSelect(i)">
                    								{{i}}
                    							</span>
                    						</td>
                    					</tr>
                    				</table>
                    			</td>
                    		</tr>
                    	</table>
                    </div>
                </div>
            </div>
        </div>
    </section>
      









</body>
</html>
