<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	// Calender 객체 생성
	
	Calendar cal = Calendar.getInstance();

	//현재 년, 월, 일 확인
	int nowYear = cal.get(Calendar.YEAR);	//2023
	int nowMonth = cal.get(Calendar.MONTH)+1;	//12
	int nowDay = cal.get(Calendar.DAY_OF_MONTH); // 11
	
	
	
	String m = request.getParameter("month");
	int mon = Integer.parseInt(m);
	
	String[] arr = {"일","월","화","수","목","금","토"};
	
	int w;
	
	String str = "";
	String str2 = "";
	String str3 = "";
	
	for (int i=0; i<=10; i++) {
		
		str2 +="<option value= "+((nowYear-10)+i)+">"+ ((nowYear-10)+i) + "</option>";
		
	}
	
	for (int i=1; i<=10; i++) {
		
		str +="<option value= "+(nowYear+i)+">"+ (nowYear+i) + "</option>";
		
	}
	
	//달력 만들기 
	
	int[] month = {31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
	
	int nalsu;
	
	int plus = 0;
	
	if (nowYear % 4 == 0 && nowYear % 100 != 0 || nowYear % 400 == 0) {
		
		month[1] = 29;
	} else {
		
		month[1] = 28;
	}
	
	nalsu = (nowYear - 1) * 365 + (nowYear - 1) / 4 - (nowYear - 1) / 100 + (nowYear - 1) / 400;
	
	for (int i = 1; i<mon; i++) {
		nalsu += month[i - 1];
	}
	
	nalsu += 1;
	
	w = nalsu % 7;
	
	for (int i = 1; i <= w; i++) {
		
		
	}


%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SendAndRecive07</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript">


	function check() {
		
		document.getElementById("memberForm").submit();
		
	}


</script>
</head>
<body>

<!-- 
	○ 데이터 송수신 실습 07
	
		- 달력을 출력하는 JSP 페이지를 구성함 
		- 페이지 레이아웃은 연도와 월을 입력받아 
		  화면에 출력해주는 형태의 페이지로 구성
		- 단, submit 버튼 없이 이벤트 처리를 할 수 있도록 함 
		- 전송한 내용을 스스로 수신해서 출력해주는 형태의 페이지로 구성함 
		- 연도 선택 기본 구성은 현재의 연도를 기준으로 
		  이전 10년, 이후 10년 으로 구성함 
		  (기본적으로 만년달력 혀앹로 구성하는데
		   현재의 연, 월 달력 객체로부터 확인 할 수 있도록 함)
		- 월 선택 기본 구성은 1월부터 12까지로 구성함
		
		   2013
		     :
		 [ 2023 ▼ ] 년 [12 ▼] 월  
 			 :
 		   2023
 		  -------------------------
 		  ------------------------- 		  
 		  -------------------------		  
 		  -------------------------
 		  
 		- 연도 select 나 월 select의 내용이 변화되면
 		  해당 연 월의 달력을 출력해주는 형태의 페이지로 구성함 
 		  
 		- 사용자 최초 요청 주소는 
 		  http://localhost:3306/WebApp007/SendAndReceive07.jsp로 함 
 		  
 		○ SendAndReceive07.jsp
 
 
 -->
 
 <div>
 	<form onchange ="check()" id="memberForm" >
		<select id="year" name = "year">
			<%=str2 %>
			<%=str %>
		</select>년
		<select id="month" name="month">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		</select>월
 	</form>
 </div>
 <br><br>

<div>
	<%=nowYear %>년<%=mon %>월
</div>
</body>
</html>