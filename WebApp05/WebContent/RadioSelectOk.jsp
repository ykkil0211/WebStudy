<%@ page contentType="text/html; charset=UTF-8"%>
<%-- <%


	// 한글 깨짐 방지 처리
	request.setCharacterEncoding("UTF-8");	// check~!
	
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	String hobby[] = request.getParameterValues("hobby");
	
	String arr= "";

	for (int i=0; i<hobby.length; i++) {
		
		arr = hobby[i];
	}
	
%>  --%>

<%
	//스크립릿 영역
	
	//이전 페이지(RadioSelect.jsp)로부터 데이터 수신
	// → name
	
	// 한글 깨짐 방지 처리
	request.setCharacterEncoding("UTF-8");	// check~!
	
	//이전 페이지(RadioSelect.jsp)로부터 데이터 수신
	// → name, gender, major, hobby 
	
	String nameStr = request.getParameter("name");		// 텍스트박스... 단일값 수신
	String genderStr = request.getParameter("gender");	// 라디오버튼... 단일값 수신
	String majorStr = request.getParameter("major");	// 선택상자... 단일값 수신
	String[] hobbyArr = request.getParameterValues("hobby");
	//-- 다중 선택이 가능한 선택상자일 경우...
	//	『getParameterValues()』 로 데이터 수신 
	// → 배열 반환 
	
	// name 수신 및 처리 → 특이사항 없음 
	
	// gender 수신 및 처리 
	
	String gender = "";
	if(genderStr.equals("M"))
		gender = "남자";
	else if(genderStr.equals("F"))
		gender = "여자";
	else
		gender = "확인불가";
	
	// major 수신 및 처리 → 특이사항 없음 
	
	//hobby 수신 및 처리 
	String hobby = "";
	if (hobbyArr != null)
	{
		
		for (String item : hobbyArr)
			hobby += "["+item+"]";
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RadioSelectOk.jsp</title>
</head>
<body>

<%-- <div>

	<h5><%=name %></h5><br>
	<h5><%=gender %></h5><br>
	<h5><%=major %></h5><br>
	<h5><%=arr %></h5><br>
	
</div> --%>

<div>
	<h1>JSP를 이용한 데이터 송수신 실습 03</h1>
	<hr>
	<p>RadioSelect.jsp → RadioSelectOk.jsp</p>
</div>


</body>
</html>