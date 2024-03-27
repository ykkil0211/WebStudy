<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	
	//캘린더 구성 
	Calendar cal = Calendar.getInstance();
	
	// 오늘 현재 날짜 담기
	int nowYear = cal.get(Calendar.YEAR);	
	int nowMonth = cal.get(Calendar.MONTH)+1;	
	int nowDay = cal.get(Calendar.DAY_OF_MONTH);
	
	//이전 페이지(SendAndReceive08.jsp)로부터 넘어온 데이터 수신
	String strYear = request.getParameter("year");
	String strMonth = request.getParameter("month");
	
	int year = nowYear;
	int month = nowMonth;
	
	//오늘 달력 표시용 변수 
	// 여기를 year, month로 구성 
	if(strYear != null)
		year = Integer.parseInt(strYear);
	if(strMonth != null)
		month = Integer.parseInt(strMonth);
	
	int preYear = year;
	int preMonth = month-1;
	
	if(preMonth<1) {
		preYear = year -1;
		preMonth =12;
	}
	
	int nextYear = year;
	int nextMonth = month+1;

	
	//날짜 이름 배열 선언
	//String[] weekNames = {"일요일","월요일","화요일","수요일","목요일","금요일","토요일"};
	

		
    if(nextMonth > 12) {
    	nextYear = year +1;
        month = 1; // 1월로 설정
    }
    

	//1월부터 12까지 끝일 변수 
	int[] months = {31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
 
    
	//윤년 평년인지 보기
	if(year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
		
		months[1] = 29;
		
	} else {
		
		months[1] = 28;
		
	}
	
	// 전체 날 수 구하기
	int nalsu = (year - 1) * 365 + (year - 1) / 4 
			- (year - 1) / 100 + (year - 1) / 400;
	
	
	//전날까지의 날 수를 다 담기 
	for (int i = 0; i < month - 1; i++) {
	    nalsu += months[i];
	}

	nalsu++; // 날수에 +1하기 
	
	int weekDay = nalsu%7;
	
	
	//달력 담는 변수
	String str = "";
	
	//달력 만들기 
	str += "<table border='1'>";
	
	str += "<tr>";
	str += "<th>일요일</th>";
	str += "<th>월요일</th>";
	str += "<th>화요일</th>";
	str += "<th>수요일</th>";
	str += "<th>목요일</th>";
	str += "<th>금요일</th>";
	str += "<th>토요일</th>";
	str += "</tr>";
	
	for(int i=1; i<=weekDay; i++) {
		str += "<td>";
		str += " ";
		str += "</td>";
	}
	
	for (int i=1; i<=months[month-1]; i++) {
		
		str += "<td>";
		str += i;
		str += "</td>";
		weekDay++;
		
		if(weekDay%7==0) {
			
			str += "<tr></tr>";
		}

	}

	str += "</table>";
	
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SendAndReceive08.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript">

	function formCalendar(obj) {
		
		obj.submit();
	}

</script>
</head>
<body>
<!-- ○데이터 송수신 08 
	   - 달력을 출력하는 JSP 페이지를 구성
	   - 전송한 내용을 수신해서 출력해주는 행태의 단독 페이지로 구성
	   
	   ◀ 2023년 12월 ▶
	   
	   -----------------------------------
	   -----------------------------------
	   -----------------------------------
	   -----------------------------------
	   
	   - 『◀』 이나 『▶』 클릭 시 
	   해당 년 월의 달력을 출력해주는 형태의 페이지로 구현함
	   
	   - 사용자 최초 요청 주소는 
	     http://localhost:3306/WebApp07/SendAndReceive08.jsp
	     
	  ○ SendAndReceive08.jsp
	  	  
-->
	    
<div>
	<form>
		<a href="SendAndReceive08.jsp?year=<%=preYear%>&month=<%=preMonth%>">◀</a>
		<%=year %>년 <%=month %>월
		<a href="SendAndReceive08.jsp?year=<%=nextYear%>&month=<%=nextMonth%>">▶</a>

 		<br><br>
		<%=str %>
	</form>
</div>


</body>
</html>