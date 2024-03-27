<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
System.out.println(cp);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Template.jsp</title>
<!-- BootStrap -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/css/banner_side.css" />
<!-- chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- JQuery -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<!-- ionicons -->
<script type="module"
	src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
	rel="stylesheet" />
<style>
.row-space {
	margin-right: 20px;
	margin-bottom: 20px;
	justify-content: flex-start;
	flex-flow: row nowrap;
	display: flex;
}
.bordered-div {
	border: 1px solid #d9d9d9;
	padding: 18px;
	margin-right: 10px;
	margin-bottom: 10px;
	height: 110px;
}
.material-symbols-outlined {
	font-family: 'Material Symbols Outlined';
	font-weight: normal;
	font-style: normal;
	font-size: 39px;
	line-height: 1;
	letter-spacing: normal;
	text-transform: none;
	display: inline-block;
	white-space: nowrap;
	word-wrap: normal;
	direction: ltr;
	-webkit-font-feature-settings: 'liga';
	-webkit-font-smoothing: antialiased;
}
ul.pagination2 {
	display: inline;
}
li.pagination2 {
	display: inline;
}
nav.pagination2 {
	display: inline;
}
.pagination {
	justify-content: center;
}
.spanicon {
	position: relative;
	bottom: 4px;
}
.btn {
	line-height: 0px;
	height: 30px;
}
</style>
</head>
<body>
	<div class="row mainArea">
		<div class="col-12 bannerMain">
			<div class="row bannerArea">
				<nav class="navbar bg-body-tertiary">
					<div class="container-fluid nav nav-underline">
						<!--===========[Logo]===========-->
						<a class="navbar-brand bannerLogo" href="#"> <img alt="Logo"
							class="bannerLogoImage d-inline-block align-text-top"
							src="img/TestLogo.png">
						</a>
						<!--===========[Logo]===========-->
						<span class="nav-link"><a href="#">프로젝트 게시판</a></span> <span
							class="nav-link"><a href="#">커리어 게시판</a></span> <span
							class="nav-link"><a href="#">포트폴리오 게시판</a></span>
						<!--=======[ member Icon ]=======-->
						<div class="oneMember">
							<div class="buttonBox">
								<!--======[ search Button ]======-->
								<button id="searchButton" class="btn btn-primary" type="button"
									data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop"
									aria-controls="offcanvasTop">
									<ion-icon name="search-outline"></ion-icon>
								</button>
								<!--======[ search Button ]======-->
								<!--======[ chat Button ]======-->
								<button id="chatButton" class="btn btn-primary" type="button"
									data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop"
									aria-controls="offcanvasTop">
									<ion-icon name="chatbubble-outline"></ion-icon>
								</button>
								<!--======[ chat Button ]======-->
								<!--======[ alarmButton ]======-->
								<button id="alarmButton" class="btn btn-primary" type="button"
									data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop"
									aria-controls="offcanvasTop">
									<ion-icon name="notifications"></ion-icon>
								</button>
								<!--======[ alarmButton ]======-->
							</div>
							<!-- end .buttonBox -->
							<!-- 
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<span class="nickname" id="mem1">강구가구가구가</span>
					<div class="gradeIcon">
						🌱
					</div>
					 -->
							<!-- 로그인/회원가입으로 이동 -->
							<span class="nav-link log"><a href="Login.action">로그인/회원가입</a></span>
						</div>
						<!-- end .oneMember -->
						<!--=======[ member Icon ]=======-->
					</div>
			</div>
			<!-- end .container-fluid -->
			</nav>
		</div>
		<!-- end .row .bannerArea  -->
	</div>
	<!--===========[offCanvas]===========-->
	<div class="col-12">
		<div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop"
			aria-labelledby="offcanvasTopLabel">
			<!--[ 검색창을 열었을 때 보여지는 내용 ]-->
			<div class="offcanvas-body">
				<div class="row searchFormArea align-self-center">
					<div class="col-2">
						<ion-icon name="search-circle"></ion-icon>
					</div>
					<!-- end .col-1 -->
					<div class="col-8">
						<!--===========[searchForm]===========-->
						<form class="d-flex" role="search">
							<input class="form-control me-2 searchTextForm" type="search"
								placeholder="검색어를 입력하세요." aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form>
						<!--===========[searchForm]===========-->
					</div>
					<!-- end .col-8 -->
				</div>
				<!-- end .row -->
			</div>
			<!-- end .offcanvas-body -->
		</div>
	</div>
	<!--===========[offCanvas]===========-->
	<div class="flex">
		<div class="col-6 menuArea">
			<div class="leftmenuBarBox">
				<div class="leftmenuBar">
					<!--===========[Logo]===========-->
					<a class="navbar-brand mainLogo" href="Code_Mate_admin.action"> <img alt="Logo"
						class="LogoImage d-inline-block align-text-top"
						src="img/TestLogo.png">
					</a>
					<!--===========[Logo]===========-->
					<div class="menuOptions nav nav-underline" id="nav">
						<ul class="nav-item">
							<a href="Member.action" class="majorTopic nav-link">회원조회<ion-icon
									class="menuIcon" name="terminal-outline"></ion-icon></a>
							<li>
								<ul>
									<li><a href="Member_today.action" class="nav-link">현재 접속한 회원</a></li>
									<li><a href="Member_penalty.action" class="nav-link">패널티 당한 회원</a></li>
									<li><a href="Member.action" class="nav-link">전체회원</a></li>
									<li><a href="Member_close.action" class="nav-link">탈퇴한 회원</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav-item">
							<a href="#" class="majorTopic nav-link">신고처리<ion-icon
									class="menuIcon" name="desktop-outline"></ion-icon></a>
							<li>
								<ul>
									<li><a href="#" class="nav-link">들어온 내용</a></li>
									<li><a href="#" class="nav-link">처리한 내용</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav-item">
							<a href="#" class="majorTopic nav-link">문의사항<ion-icon
									class="menuIcon" name="reader-outline"></ion-icon></a>
							<li>
								<ul>
									<li><a href="#" class="nav-link">1대1문의</a></li>
									<li><a href="#" class="nav-link">FAQ</a></li>
									<li><a href="#" class="nav-link">신고 관련 문의</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav-item">
							<a href="#" class="majorTopic nav-link">커뮤니티<ion-icon
									class="menuIcon" name="person-outline"></ion-icon></a>
							<li>
								<ul>
									<li><a href="#" class="nav-link">게시판</a></li>
									<li><a href="#" class="nav-link">프로젝트</a></li>
									<li><a href="#" class="nav-link">댓글</a></li>
									<li><a href="#" class="nav-link">대댓글</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- end .menuOptions -->
				</div>
				<!-- end .leftmenuBar -->
			</div>
			<!-- end .leftmenuBarBox -->
		</div>
		<!-- end .col-6 .menuArea -->
		<!-- 본문 영역 -->
		<div class="row main-text">
			<div class="row-space">
				<div class="col-lg-3 col-md-10 bordered-div">
					<h5>오늘의 방문자 수</h5>
					<div>
						<span class="material-symbols-outlined" style="color: #7ace4c;">group</span>
						<span
							style="float: right; margin-right: 18px; font-size: 18px; color: #7ace4c">123</span>
					</div>
				</div>
				<div class="col-lg-3 col-md-10 bordered-div">
					<h5>오늘 접속한 회원</h5>
					<div>
						<span class="material-symbols-outlined" style="color: #e996e9;">nature_people</span>
						<span
							style="float: right; margin-right: 18px; font-size: 18px; color: #e996e9">85</span>
					</div>
				</div>
				<div class="col-lg-3 col-md-10 bordered-div">
					<h5>오늘 들어온 신고 수</h5>
					<div>
						<span class="material-symbols-outlined" style="color: #93b8f1;">supervised_user_circle</span>
						<span
							style="float: right; margin-right: 18px; font-size: 18px; color: #93b8f1">25</span>
					</div>
				</div>
			</div>
			<div class="col-md-9 col-lg-9 col-sm-9 col-xs-9 bordered-div"
				style="width: 76.3%; height: 100%;">
				<h5>전체적인 흐름</h5>
				<div class="row" style="text-align: right;">
					<div class="col-md-10">
						<div class="btn-group mt-3">
							<button type="button" class="btn btn-sm btn-secondary"
								onclick="updateChart('daily')">일간</button>
							<button type="button" class="btn btn-sm btn-secondary"
								onclick="updateChart('weekly')">주간</button>
							<button type="button" class="btn btn-sm btn-secondary"
								onclick="updateChart('monthly')">월간</button>
						</div>
						<canvas id="chart-container"
							style="display: block; box-sizing: border-box; height: 220px; width: 500px; margin-left: 200px;"></canvas>
					</div>
				</div>
				<script>
					const chartEl = document.getElementById('chart-container')
							.getContext('2d');
					let chartData = {
						daily : {
							labels : [ '3일전', '2일전', '1일전', '오늘' ],
							visitors : [ 80, 12, 30, 12 ],
							reports : [ 10, 5, 8, 3 ], 
							projects : [ 20, 40, 60, 80 ]
						},
						weekly : {
							labels : [ '4주전', '3주전', '2주 전', '1주 전', '이번 주' ],
							visitors : [ 30, 50, 100, 30, 70 ],
							reports : [ 15, 25, 20, 10, 30 ],
							projects : [ 40, 60, 80, 100,89 ]
						// 추가된 데이터
						},
						monthly : {
							labels : [ '세달 전', '두달 전', '한달 전', '이번 달' ],
							visitors : [ 80, 120, 40, 90 ],
							reports : [ 25, 35, 30, 15 ], 
							projects : [ 60, 80, 100, 120 ]
						}
					};
					const barChart = new Chart(chartEl, {
						type : 'line',
						data : {
							labels : chartData.daily.labels,
							datasets : [ {
								label : '방문자 수',
								borderWidth : 3,
								data : chartData.daily.visitors
							}, {
								label : '신고 건수',
								borderWidth : 3,
								data : chartData.daily.reports
							}, {
								label : '프로젝트 갯수',
								borderWidth : 3,
								data : chartData.daily.projects
							} ]
						},
					});
					function updateChart(type) {
						barChart.data.labels = chartData[type].labels;
						barChart.data.datasets[0].data = chartData[type].visitors;
						barChart.data.datasets[1].data = chartData[type].reports;
						barChart.data.datasets[2].data = chartData[type].projects;
						barChart.update();
					}
				</script>
			</div>
			<div class="col-md-9 col-lg-9 col-sm-9 col-xs-9 bordered-div"
				style="width: 76.3%; height: 100%;">
				<h5>전체 회원 조회</h5>
				<div class="table-responsive">
					<table class="table no-wrap">
						<thead>
							<tr class="text-center">
								<th class="border-top-0">#</th>
								<th class="border-top-0">이름</th>
								<th class="border-top-0">아이디</th>
								<th class="border-top-0">가입일</th>
								<th class="border-top-0">글 수</th>
								<th class="border-top-0">댓글 수</th>
								<th class="border-top-0">문의사항 수</th>
								<th class="border-top-0">메모</th>
								<th class="border-top-0">수정/삭제</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">1</td>
								<td class="text-center">윤수 짱짱</td>
								<td class="text-center">ys0106</td>
								<td class="text-center">2024-02-26</td>
								<td class="text-center">10</td>
								<td class="text-center">100</td>
								<td class="text-center">1</td>
								<td class="text-center">없음</td>
								<td class="text-center"><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">edit_square</span></a>
									<span class="spanicon">/</span><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">delete_forever</span></a>
								</td>
							</tr>
							<tr>
								<td class="text-center">2</td>
								<td class="text-center">한울 짱짱</td>
								<td class="text-center">ys0106</td>
								<td class="text-center">2024-02-26</td>
								<td class="text-center">10</td>
								<td class="text-center">100</td>
								<td class="text-center">1</td>
								<td class="text-center">없음</td>
								<td class="text-center"><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">edit_square</span></a>
									<span class="spanicon">/</span><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">delete_forever</span></a>
								</td>
							</tr>
							<tr>
								<td class="text-center">3</td>
								<td class="text-center">혜성 짱짱</td>
								<td class="text-center">hy0106</td>
								<td class="text-center">2024-02-26</td>
								<td class="text-center">10</td>
								<td class="text-center">100</td>
								<td class="text-center">1</td>
								<td class="text-center">없음</td>
								<td class="text-center"><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">edit_square</span></a>
									<span class="spanicon">/</span><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">delete_forever</span></a>
								</td>
							</tr>
							<tr>
								<td class="text-center">4</td>
								<td class="text-center">지민 짱짱</td>
								<td class="text-center">jm0106</td>
								<td class="text-center">2024-02-26</td>
								<td class="text-center">10</td>
								<td class="text-center">100</td>
								<td class="text-center">1</td>
								<td class="text-center">없음</td>
								<td class="text-center"><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">edit_square</span></a>
									<span class="spanicon">/</span><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">delete_forever</span></a>
								</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<td class="text-center">범구 짱짱</td>
								<td class="text-center">bg0106</td>
								<td class="text-center">2024-02-26</td>
								<td class="text-center">10</td>
								<td class="text-center">100</td>
								<td class="text-center">1</td>
								<td class="text-center">없음</td>
								<td class="text-center"><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">edit_square</span></a>
									<span class="spanicon">/</span><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">delete_forever</span></a>
								</td>
							</tr>
							<tr>
								<td class="text-center">6</td>
								<td class="text-center">현욱 짱짱</td>
								<td class="text-center">hw0106</td>
								<td class="text-center">2024-02-26</td>
								<td class="text-center">10</td>
								<td class="text-center">100</td>
								<td class="text-center">1</td>
								<td class="text-center">없음</td>
								<td class="text-center"><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">edit_square</span></a>
									<span class="spanicon">/</span><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">delete_forever</span></a>
								</td>
							</tr>
							<tr>
								<td class="text-center">7</td>
								<td class="text-center">현욱 짱짱</td>
								<td class="text-center">hw0106</td>
								<td class="text-center">2024-02-26</td>
								<td class="text-center">10</td>
								<td class="text-center">100</td>
								<td class="text-center">1</td>
								<td class="text-center">없음</td>
								<td class="text-center"><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">edit_square</span></a>
									<span class="spanicon">/</span><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">delete_forever</span></a>
								</td>
							</tr>
							<tr>
								<td class="text-center">8</td>
								<td class="text-center">현욱 짱짱</td>
								<td class="text-center">hw0106</td>
								<td class="text-center">2024-02-26</td>
								<td class="text-center">10</td>
								<td class="text-center">100</td>
								<td class="text-center">1</td>
								<td class="text-center">없음</td>
								<td class="text-center"><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">edit_square</span></a>
									<span class="spanicon">/</span><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">delete_forever</span></a>
								</td>
							</tr>
							<tr>
								<td class="text-center">9</td>
								<td class="text-center">현욱 짱짱</td>
								<td class="text-center">hw0106</td>
								<td class="text-center">2024-02-26</td>
								<td class="text-center">10</td>
								<td class="text-center">100</td>
								<td class="text-center">1</td>
								<td class="text-center">없음</td>
								<td class="text-center"><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">edit_square</span></a>
									<span class="spanicon">/</span><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">delete_forever</span></a>
								</td>
							</tr>
							<tr>
								<td class="text-center">10</td>
								<td class="text-center">현욱 짱짱</td>
								<td class="text-center">hw0106</td>
								<td class="text-center">2024-02-26</td>
								<td class="text-center">10</td>
								<td class="text-center">100</td>
								<td class="text-center">1</td>
								<td class="text-center">없음</td>
								<td class="text-center"><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">edit_square</span></a>
									<span class="spanicon">/</span><a href=""><span
										class="material-symbols-outlined" style="font-size: 21px;">delete_forever</span></a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<nav aria-label="...">
					<ul class="pagination">
						<li class="page-item pagination2"><a class="page-link">Previous</a></li>
						<li class="page-item pagination2"><a class="page-link"
							href="#">1</a></li>
						<li class="page-item pagination2"><a class="page-link"
							href="#">2</a></li>
						<li class="page-item pagination2"><a class="page-link"
							href="#">3</a></li>
						<li class="page-item pagination2"><a class="page-link"
							href="#">Next</a></li>
					</ul>
				</nav>
			</div>
			<!-- <div class="col-3">사이드를 여기에 작성하세요</div> -->
		</div>
	</div>
	</div>
	<!-- end .row -->
</body>
</html>

