<%@ page contentType="text/html; charset=UTF-8"%>
<%
	
	//스크립릿 영역
	
	// 이전 페이지(Table.jsp)로부터 전송된 데이터 수신
	// → su1, su2
	
	String a = request.getParameter("su1");
	String b = request.getParameter("su2");
	
	int su1 = Integer.parseInt(a);
	int su2 = Integer.parseInt(b);
	
	// 테이블 안에서 1씩 증가시켜 나갈 변수 선언 및 초기화 
	int n=1;
	
	String str = "";
	
	try{	
		
		for (int i=0; i<su2; i++) {
			
			str += "<table>";
			str += "<tr>";
			
			for (int j=0; j<su1; j++) {
				
				str += n + " ";
				++n;
				
			}
			
			str += "</tr>";
			str += "</table>";
			
		}
	}
	catch(Exception e) {
		System.out.println(e.toString());
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TalbeOk.jsp</title>
</head>
<body>

<div>
	<h1>JSP를 이용한 데이터 송수신 실습 05</h1>
	<hr>
	<p>Table.jsp → TableOk.jsp</p>
</div>
<%=str %>


</body>
</html>