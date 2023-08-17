<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
.carousel-item {
	width: 100%;
	height: 540px;
}
.carousel-inner {
	margin: 0px 0px 20px 0px;
}
table, tr, td{
	border:none;
}
td {
	padding: 2px;
}
</style>
</head>
<body>
	<div class="main_home">
		<div class="row" style="padding:40px 80px 40px 80px">
			<div class="col-lg-8">
				<div class="row" style="padding-left:">
				<h2>취향 맞춤 프로젝트</h2>
				<div class="col-md-4" v-for="svo in store_list">
					<div class="thumbnail" style="width: 260px;">
						<a href="#">
							<img :src="svo.main_poster" class="store_poster" style="width:260px; height:180px">
							<div class="caption">
								<p style="font-size: 16px; margin-bottom:1px; height: 50px;">{{svo.goods_title}}</p>
								<p style="font-size: 12px; display: flex; justify-content: space-between; align-items: center;">
									<strong style="color:#a6d8ce">{{svo.price}}</strong>&nbsp;원&nbsp;
									<span style="color:orange">{{svo.score}}</span>
									<span style="text-align:right; margin-left: auto; margin-right:10px;">{{svo.maker_name}}</span>
								</p>
							</div>
						</a>
					</div>
				</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="row">
					<h2>실시간 랭킹</h2>
					<table class="table">
						<tr><td>
							<table class="table"  v-for="(fvo, index) in fund_list" :key="index">
								<tr>
									<td width="5%" rowspan="2"><h3>{{ index+1 }}</h3></td>
									<td width="70%" style="font-size: 16px;">{{fvo.ftitle}}</td>
									<td width="25%" rowspan="2">
										<img :src="fvo.mainimg" class="store_poster" style="width:91px; height:64px;">
									</td>
								</tr>
								<tr>
									<td width="70%" style="font-size: 12px;"><span style="color:#a6d8ce">{{fvo.achieve_rate}}%</span>&nbsp;<span>{{fvo.fcname}}</span></td>
								</tr>
							</table>
						</td></tr>
					</table>
				</div>
			</div>
		</div>
		<!-- <div style="height: 10px;"></div>
		<div class="row">
			<div class="text-center">
				<ul class="pagination">
					<li v-if="startPage>1"><a href="#" @click="prev()">&lt;</a></li>
					<li v-for="i in range(startPage, endPage)" :class="i==curpage?'active':''"><a href="#" @click="selectPage(i)">{{i}}</a></li>
					<li v-if="endPage<totalpage"><a href="#"  @click="next()">&gt;</a></li>
				</ul>
			</div>
		</div> -->
	</div>
	<script>
		new Vue({
			el:'.main_home',
			data:{
				store_list:[],
				fund_list:[]
			},
			mounted:function(){
				this.send()
			},
			methods:{
				send:function(){
					axios.get("../main/store_list_vue.do").then(response=>{
						console.log(response.data)
						this.store_list = response.data
						/* this.curpage = response.data[0].curpage
						this.totalpage = response.data[0].totalpage
						this.startPage = response.data[0].startPage
						this.endPage = response.data[0].endPage */
					})
					axios.get("../main/fund_list_vue.do").then(response=>{
						console.log(response.data)
						this.fund_list = response.data
					})
				}
			}
		})
	</script>
</body>
</html>