<%@ page contentType="text/html; charset=UTF-8"%>
<%-- <%

	String dan1 = request.getParameter("dan");
	
	int result = 0;
	
	String a = "";
	
	try {
		
		int dan = Integer.parseInt(dan1);
		
		for(int i=1; i<10; i++) {
			
			result = dan * i;
			a += dan + " x " + i + " = " + result +"<br>";
			
		}
		
		
	} catch(Exception e) {
		
		System.out.println(e.toString());

	 	getServletContext().log("숫자를 입력하세용" + e.toString());
		
	}
	
%> --%>
<%	
	
	String dan = request.getParameter("dan");
	
	int n = Integer.parseInt(dan); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GugudanOk.jsp</title>
</head>
<body>

<div>
	<h1>JSP를 이용한 데이터 송수신 실습 02</h1>
	<hr>
	<p>Gugudan.jsp → GugudanOk.jsp</p>
</div>

<%--
 <%
	for (int i=1; i<=9; i++) {
		
		out.print(n + "*" + i + " = " + (n*i) + "<br>");	
			
	}
%>
 --%>
<%
	for (int i=1; i<=9; i++) {
%>
	<%=n %> * <%=i %> = <%=(n*i) %>
<% 					
	}
%>

</body>
</html>