<%@ page contentType="text/html; charset=UTF-8"%>
<%
	//이전 페이지(Redirect11.jsp)로부터 넘어온 데이터 수신 
	//『Receive11.jsp?num1=27&num2=13&op=4&str=2.1』와 같은 형태~!
	//-- 직접 Redirect11.jsp로 부터 데이터를 넘겨받는 것이 아니라 
	//   클라이언트가 새로운 요청을 하는 과정에서 넘긴 값을 수선하게 되는 개념 
	
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String op = request.getParameter("op");
	String str = request.getParameter("str");
	
	if(op.equals("1"))
		op = "+";
	else if (op.equals("2"))
		op = "-";
	else if (op.equals("3"))
		op = "*";
	else if (op.equals("4"))
		op = "/";
	
	String strResult = String.format("%s %s %s = %s",num1,op,num2,str);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Receive11.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div>
	<h1>데이터 송수신 실습 11</h1>
	<hr>
</div>

<div>
	<h2>연산 결과 : 223</h2>
</div>

</body>
</html>