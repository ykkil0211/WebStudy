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
<title>1대1 문의</title>
<!-- BootStrap -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/admin_banner_side.css" />

<!-- JQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- ionicons -->
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

</head>
<script type="text/javascript">

	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="boardlist.action?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}


</script>
<body>

<div class="row mainArea">
	<div class="col-12 bannerMain">
		<div class="row bannerArea">
			<nav class="navbar bg-body-tertiary">
			  <div class="container-fluid nav nav-underline bannerMainBox">
			    
			 	<!--===========[Logo]===========-->
				<a class="navbar-brand bannerLogo link" href="#">
					<img alt="Logo" class="LogoImage d-inline-block align-text-top" src="img/TestLogo.png" >
				</a>
				<!--===========[Logo]===========-->
				
				<span class="nav-link"><a href="#" class="link">프로젝트 게시판</a></span>
				<span class="nav-link"><a href="#" class="link">커리어 게시판</a></span>
				<span class="nav-link"><a href="#" class="link">포트폴리오 게시판</a></span>
			
			    
			    <!--=======[ member Icon ]=======-->
			    <div class="oneMember">
					<div class="buttonBox">
						<!--======[ search Button ]======-->
						<!--======[ search Button ]======-->
		
						<!--======[ chat Button ]======-->
						<!--======[ chat Button ]======-->
		
						<!--======[ alarmButton ]======-->
						<!--======[ alarmButton ]======-->
				    </div><!-- end .buttonBox -->
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
				</div><!-- end .oneMember -->
			    <!--=======[ member Icon ]=======-->
			    </div>
			  	</div><!-- end .container-fluid -->
			</nav>
		</div><!-- end .row .bannerArea  -->
	</div>

	
	<!--===========[offCanvas]===========-->
	<div class="col-12">
		
		
		<div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
		  
		  
		  <!--[ 검색창을 열었을 때 보여지는 내용 ]-->
		  <div class="offcanvas-body">
		  
		  	<div class="row searchFormArea align-self-center">
		  	
				<div class="col-2">
					<ion-icon name="search-circle"></ion-icon>
				</div><!-- end .col-1 -->
				
				<div class="col-8">
				    <!--===========[searchForm]===========-->
				    <form class="d-flex" role="search">
				      <input class="form-control me-2 searchTextForm" type="search" placeholder="검색어를 입력하세요." aria-label="Search">
				      <button class="btn btn-outline-success" type="submit">Search</button>
				    </form>
				    <!--===========[searchForm]===========-->
			    </div><!-- end .col-8 -->
			    
		    </div><!-- end .row -->
		    
		  </div><!-- end .offcanvas-body -->
		</div>
	</div>
	<!--===========[offCanvas]===========-->
	
	
	
	<div class="flex">
		<div class="col-6 menuArea">
			<div class="leftmenuBarBox">
				<div class="leftmenuBar">
				
					<!--===========[Logo]===========-->
					<a class="navbar-brand mainLogo link" href="#">
						<img alt="Logo" class="LogoImageBanner d-inline-block align-text-top" src="img/TestLogo.png" >
					</a>
					<!--===========[Logo]===========-->
					
					
					<div class="menuOptions nav nav-underline lastchange" id="nav">
						<ul class="nav-item">
							<a href="Member.action" class="majorTopic nav-link link">회원조회<ion-icon
									class="menuIcon" name="terminal-outline"></ion-icon></a>
							<li class="miniMenuOption">
								<ul>
									<li class="miniMenuOption"><a href="Member.action"
										class="nav-link link">전체회원</a></li>
									<li class="miniMenuOption"><a href="Member_penalty.action"
										class="nav-link link">패널티 당한 회원</a></li>
									<li class="miniMenuOption"><a href="Member_close.action"
										class="nav-link link">탈퇴한회원</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav-item ">
							<a href="Member_report.action" class="majorTopic nav-link link">신고처리<ion-icon
									class="menuIcon" name="desktop-outline"></ion-icon></a>
							<li class="miniMenuOption">
								<ul>
									<li class="miniMenuOption"><a href="Member_report.action"
										class="nav-link link">들어온 내용</a></li>
									<li class="miniMenuOption"><a href="Member_report_process.action"class="nav-link link">처리한 내용</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav-item">
							<a href="Inquiry_Faq.action" class="majorTopic nav-link link">문의사항<ion-icon class="menuIcon" name="reader-outline"></ion-icon></a>
							<li class="miniMenuOption">
								<ul>
									<li class="miniMenuOption"><a href="Inquiry_1v1.action" class="nav-link link">1대1문의</a></li>
									<li class="miniMenuOption"><a href="Inquiry_Faq.action" class="nav-link link">FAQ</a></li>
									<li class="miniMenuOption"><a href="Inquiry_Report.action" class="nav-link link">신고 관련 문의</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav-item">
							<a href="Admin_Communiity.action" class="majorTopic nav-link link">커뮤니티<ion-icon class="menuIcon" name="person-outline"></ion-icon></a>
							<li class="miniMenuOption">
								<ul>
									<li class="miniMenuOption"><a href="Admin_Communiity.action"class="nav-link link">게시판</a></li>
									<li class="miniMenuOption"><a href="Admin_Project.action"class="nav-link link">프로젝트</a></li>
								</ul>
							</li>
						</ul>
					</div><!-- end .menuOptions -->
				</div><!-- end .leftmenuBar -->
			</div><!-- end .leftmenuBarBox -->
		</div><!-- end .col-6 .menuArea -->
		
		<!-- 본문 영역 -->
		<div class="row main-text">

			<div class="row-space">
				<div class="col-lg-3 col-md-10 bordered-div">
					<h5>전체 회원 수</h5>
					<div>
						<span class="material-symbols-outlined" style="color: #7ace4c;">group</span>
						<span
							style="float: right; margin-right: 1px; font-size: 25px; color: #7ace4c">${all_count }</span>
					</div>
				</div>
				<div class="col-lg-3 col-md-10 bordered-div">
					<h5>진행중인 프로젝트 수</h5>
					<div>
						<span class="material-symbols-outlined" style="color: #e996e9;">nature_people</span>
						<span
							style="float: right; margin-right: 1px; font-size: 25px; color: #e996e9">${project_count }</span>
					</div>
				</div>
				<div class="col-lg-3 col-md-10 bordered-div">
					<h5>전체 신고 수</h5>
					<div>
						<span class="material-symbols-outlined" style="color: #93b8f1;">supervised_user_circle</span>
						<span
							style="float: right; margin-right: 1px; font-size: 25px; color: #93b8f1">${report_count }</span>
					</div>
				</div>
			</div>
			<div class="col-10">
				<div class="col-md-9 col-lg-9 col-sm-9 col-xs-9 bordered-div"
				style="width: 91.5%; height: 100%; border: 1px solid #d9d9d9;">
				<h5 style="margin-bottom: 46px;">문의 사항</h5>

				<div class="table-responsive">
					<table class="table no-wrap">
						<thead>
							<tr class="text-center">
								<th class="border-top-0">#</th>
								<th class="border-top-0">회원 코드</th>
								<th class="border-top-0">작성일</th>
								<th class="border-top-0">제목</th>
								<th class="border-top-0">문의 유형</th>
								<th class="border-top-0">처리 상태</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="list" items="${list}">
			                <tr onclick="redirectAction('${list.iq_code}')">
			                    <td class="text-center ellipsis-content">${list.iq_code}</td>
			                    <td class="text-center ellipsis-content">${list.mem_code}</td>
			                    <td class="text-center ellipsis-content">${list.kdate}</td>
			                    <td class="text-center ellipsis-content">${list.title}</td>
			                    <td class="text-center ellipsis-content">${list.content}</td>
			                   
			                    <td class="text-center ellipsis-content"">
			                        <a href="#">
			                            <span class="material-symbols-outlined" style="font-size: 21px;">Done</span>
			                        </a>
			                    </td>
			                    
			                </tr>
			            </c:forEach>
			        </tbody>
			    </table>
			</div>
			
			<script>
			    function redirectAction(iqCode) {
			        window.location.href = 'Inquiry_Board.action?iq_code=' + iqCode;
			    }
			</script>
			
				<div style="display: block; text-align: center;">
					<c:if test="${paging.startPage != 1 }">
						<a
							href="/Inquiry_1v1.action?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
						var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<a
									href="<%=cp %>/Inquiry_1v1.action?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<a
							href="<%=cp %>/Inquiry_1v1.action?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
					</c:if>
				</div>
			</div>
			<!-- <div class="col-3">사이드를 여기에 작성하세요</div> -->
			</div>				
		</div>
		
				
	</div><!-- end .row -->
		
		



</body>
</html>