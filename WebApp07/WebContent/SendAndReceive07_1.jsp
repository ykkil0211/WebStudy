<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%

	// 자기 자신 페이지(SendAndReceive07.jsp)로부터 데이터 수신
	// → year, month
	String sYear = request.getParameter("year");
	String sMonth = request.getParameter("month");
	
	// Calender 객체 생성

	Calendar cal = Calendar.getInstance();
	
	//현재 년, 월, 일 확인
	int nowYear = cal.get(Calendar.YEAR);	//-- 2023
	int nowMonth = cal.get(Calendar.MONTH)+1;	//-- 12
	int nowDay = cal.get(Calendar.DAY_OF_MONTH); //-- 11

	//표시할 달력의 년, 월 구성 → 페이지 최초 요청을 감안한 코드 
	int selectYear = nowYear;
	int selectMonth = nowMonth;
	
	//1월부터 12월까지의 끝 일 출력
	int[] months = {31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

	
	//페이지에 대한 요청이 최초 요청이 아닐 경우 
	// → Line 6 ~ 7 을 통해 수신한 데이톨 표시할 달력의 년, 월 구성 
	if (sYear != null || sMonth != null)
	{
		selectYear = Integer.parseInt(sYear);
		selectMonth = Integer.parseInt(sMonth);
	}
	
	
	
	
	// 테스트 
	//out.print("<h1>selectYear : " + selectYear + "</h1>");
	//out.print("<h1>selectMonth : " + selectMonth + "</h1>");
	
	// 확인한 날짜로 년도 select opiton 구성
/* 		<option value="1">1</option>
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
		<option value="12">12</option> */
		
		String yOptions = "";
		
		for (int year=(selectYear-10); year<=(selectYear+10); year++) //2023 ~ 2033
		{
			
			//관찰1
			//"<option value="+ 2013 +">"+2013 + "</option>";
			//yOptions += "<option value="+year+">"+year + "</option>";
			//yOptions += "<option value='"+year+"'>"+year + "</option>";
			
			//관찰2. 
			//if (year==nowYear)
				//yOptions += "<option value='"+year+"' selected ='selected'>"+year + "</option>";
			//else
			//	yOptions += "<option value='"+year+"''>"+year + "</option>";
				
			// 상황1. 페이지 최초 요청일 때	→ sYear는 null / 현재 년도와 옵션이 같을 때 → selected
			// 상황2. 페이지 최초 요청이 아닐 때 // 선택 년도와 옵션이 같을 때 → selected
		
			if(sYear == null && year==nowYear)
				yOptions += "<option value='"+year+"' selected ='selected'>"+year + "</option>";	
			else if (sYear!=null && year==Integer.parseInt(sYear))
				yOptions += "<option value='"+year+"' selected ='selected'>"+year + "</option>";
			else
				yOptions += "<option value='"+year+"''>"+year + "</option>";

		}
		
		//확인한 날짜로 select 구성 
/* 		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
						:
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option> */	
		
		String mOptions = "";
		for(int month=1; month<=12; month++) 		//11 ~ 12
		{
/* 			//관찰1.
			mOptions += "<option value='"+month+"''>"+month + "</option>";
			
			//관찰2.
			if (month==nowMonth)
				mOptions += "<option value='"+month+"' selected ='selected'>"+month + "</option>";
			else
				mOptions += "<option value='"+month+"''>"+month + "</option>"; */
				
			//상황1. 페이지 최초 요청일때 	   → sMonth는 null / 현재 월과 옵션이 같을 때 → select(Ｏ)
			//상황2. 페이지 최초 요청이 아닐때 → sMonth는 null이 아님 / 현재 월과 옵션이 같을 때 →(Ｘ)
			//상황3. 나머지					   → selected(Ｘ)
			
			if(sMonth == null && month==nowMonth)
				
				mOptions += "<option value='"+month+"' selected ='selected'>"+ month + "</option>";	
				
			else if (sMonth!=null && month==Integer.parseInt(sMonth))
				
				mOptions += "<option value='"+month+"' selected ='selected'>"+ month + "</option>";
			else
				mOptions += "<option value='"+month+"''>"+month + "</option>";
				
		}
		
		//그려야 할 달력의 1일이 무슨 요일인지 확인 
		// (달력) 각자 
		
		
		//윤년인지 평년인지 확인하는 구문
		if (selectYear % 4 == 0 && selectYear % 100 != 0 || selectYear % 400 == 0) {
	
			months[1] = 29;
			
		} else {
			
			months[1] = 28;
		}
/* 		
		//전번 달까지의 날을 뽑는변수 
		for (int i = 1; i < selectMonth; i++) {
			
			nalsu += month12[i - 1];
		}
		
		nalsu += 1;
		
		int day = nalsu%7;
		
		String str="";
		
		str = "<table broder='1'>";
		str += "<tr>";
		str += "<th>일</th>";
		str += "<th>월</th>";
		str += "<th>화</th>";
		str += "<th>수</th>";
		str += "<th>목</th>";
		str += "<th>금</th>";
		str += "<th>토</th>";
		str += "</tr>";
		
		for(int i=1; i<=day; i++) {
			str += "<td>";
			str += " ";
			str += "</td>";
		}
		
		for (int i=1; i<=month12[selectMonth-1]; i++) {
			
			str += "<td>";
			str += i;
			str += "</td>";
			day++;
			
			if(day%7==0) {
				
				str += "<tr></tr>";
			}
			
			
		} */
		
		String[] weekNames = {"일요일","월요일","화요일","수요일","목요일","금요일","토요일"};
		
		//지금까지의 년월을 받을 변수
		int nalsu = (selectYear - 1) * 365 + (selectYear - 1) / 4 - (selectYear - 1) / 100 + (selectYear - 1) / 400;
		
		//전번 달까지의 날을 뽑는변수 
		for (int i = 1; i < selectMonth; i++) 
		{
			nalsu += months[i - 1];
		}
		
		nalsu++; // +1
		
		int week = nalsu%7;	// 요일 변수
		int lastDay = months[selectMonth-1];	// 마지막 날짜 변수
		
		//System.out.print(week);
		
		// 달력 그리기  ---------------------------------------------------
		String calStr = "";
		calStr += "<table border='1'>";		// -- start table
		
		// 요일 이름 발생 
		calStr += "<tr>";
		for(int i=0; i<weekNames.length; i++)
		{	
			if(i==0)	// 일요일 
				calStr += "<th style='color:red;'>" + weekNames[i] + "</th>";
			else if(i==6)	// 토요일
				calStr += "<th style='color:blue;'>" + weekNames[i] + "</th>";
			else
				calStr += "<th>" + weekNames[i] + "</th>";
		}
		//빈 칸 공백 td 발생 
		calStr += "</tr>";
		for (int i=1; i<=week; i++) 
			calStr += "<td></td>";			
		
		// 날짜 td 발생 
		for(int i=1; i<=lastDay; i++) 
		{
			
			week++;	// 날짜가 하루씩 찍힐 때 마다(구성이 이루어질 때 마다)
					// 요일도 함께 1씩 증가할 수 있도록 처리 			
			//calStr += "<td>" + i + "</td>";	
			
			if(selectYear == nowYear && selectMonth==nowMonth && i==nowDay && week%7==0)
			{
				// 토요일인 오늘
				calStr += "<td class='nowSat'>" + i + "</td>";
				
			} else if (selectYear == nowYear && selectMonth==nowMonth && i==nowDay && week%7==1) 
			{
				// 일요일인 오늘
				calStr += "<td class='nowSun'>" + i + "</td>";

			} else if (selectYear == nowYear && selectMonth==nowMonth && i==nowDay) 
			{
				//평일인 오늘
				calStr += "<td class='now'>" + i + "</td>";

			}
			else if (week%7==0) 
			{
				
				// 오늘이 아닌 토요일
				calStr += "<td class='sat'>" + i + "</td>";

				
			}else if (week%7==1) 
			{
				// 오늘이 아닌 일요일	
				calStr += "<td class='sun'>" + i + "</td>";

				
			}else 
			{	// 오늘이 아닌 평일 
				calStr += "<td>" + i + "</td>";

			}
			
			if (week%7==0) 
			{
				calStr += "</tr><tr>";
			}
		}
		
		// 빈 칸 공백 td 발생 
		for (int i=0; i<=week; i++, week++)
		{
			if (week%7==0)
				break;
			
			calStr += "<td></td>";
			
		}
		
		if (week%7 !=0) 
			calStr += "</tr>";
		
		calStr += "</table>";				// -- end table
		//-----------------------------------------------------------------
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SendAndRecive07</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type ="text/css">
	td {text-align: right;}
	td.sun {color: red;}
	td.sat {color: blue;}
	td.now {background-color: aqua; font-weight: bold;} /* 평일인 오늘 */
	td.nowSat {background-color: aqua; font-weight: bold; color: blue;}; /* 토요일인 오늘 */
	td.nowSun {background-color: aqua; font-weight: bold; color: red;}; /* 일요일인 오늘 */
</style>
<script type="text/javascript">

	function formCalendar(obj)
	{
		//유효성 검사가 필요할 경우 삽입할 수 있는 영역!
		
		// ...
		
		obj.submit();
		
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
 	<form action="" method="get">
		<select id="year" name = "year" onchange="formCalendar(this.form)">
			<%=yOptions %>
		</select>년
		<select id="month" name="month" onchange="formCalendar(this.form)">
			<%=mOptions %>
		</select>월
		<br><br>
		<%=calStr %>
 	</form>
 </div>

</body>
</html>