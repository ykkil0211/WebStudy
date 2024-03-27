<%@ page contentType="text/html; charset=UTF-8"%>
<%
	// Forword10.jsp

	// 이전 페이지(Send10.jsp)로부터 넘어온 데이터 수신 
	// → num1, calResult, num2
	
	String num1Str = request.getParameter("num1");
	String num2Str = request.getParameter("num2");
	String calResult = request.getParameter("calResult");
	
	int num1 = 0;
	int num2 = 0;
	String result = "";
	
	try 
	{
		
		num1 = Integer.parseInt(num1Str);
		num2 = Integer.parseInt(num2Str);
		
		if(calResult.equals("1"))
			result = String.format("%d + %d = %d", num1,num2, (num1+num2));
		else if(calResult.equals("2"))
			result = String.format("%d - %d = %d", num1,num2,(num1-num2));
		else if(calResult.equals("3"))
			result = String.format("%d * %d = %d", num1,num2, (num1*num2));
		else if(calResult.equals("4"))
			result = String.format("%d / %d = %d",num1,num2,(num2/(double)num2));
	
	} 
	catch (Exception e) 
	{
		System.out.println(e.toString());	
		
	}
	
	//요청에 내용 추가 
	request.setAttribute("resultStr", result);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forword10.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<!-- JSP 액션 태그를 활용한 forward 처리 -->
<jsp:forward page ="Receive10.jsp"></jsp:forward>

<div>
	<h1>데이터 송수신 실습 10</h1>
	<hr>
</div>



</body>
</html>