<%@ page contentType="text/html; charset=UTF-8"%>
<%-- <%

		
	String dan = request.getParameter("Gugudan");

	int dan1 = Integer.parseInt(dan);

	String str = "";
	
	for (int i=1; i<10; i++) {

		str += dan1 +"*"+ i + "=" +(dan1*i) + " ";
		str += "</br>";
		
	}

%> --%>

<%
	// 이전 페이지(Send05.html)로부터 넘어온 데이터 수신 
	// → dan
	
	String dan = request.getParameter("Gugudan");
	int dan1 = 0;
	
	
	String result = "";

	try
	{
		dan1 = Integer.parseInt(dan);
		
		for (int i=1; i<10; i++) {

			result += dan1 +"*"+ i + "=" +(dan1*i) + " ";
			result += "</br>";
			
		}
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<div>
	<h2>구구단 결과</h2>
	<%=result %>

</div>

</body>
</html>