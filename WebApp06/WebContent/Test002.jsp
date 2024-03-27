<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test002.jsp</title>
</head>
<body>

<div>
	<h1>include 디렉티브 실습</h1>
	<hr>
</div>

<%@ include file="Test003.jsp" %>
<br><br>

<div>
	<h2><%=str %></h2>
	<h2><%=name %></h2>
</div>

<div>
	<p>여러 JSP 페이지에서 공통적으로 포함하는 내용이 있을때 
	이러한 내용을 매번 입력하지 않고 별도의 파일을 저장해 두었다가
	JSP 파일에 삽입하도록 하는 것이 include 디렉티브임</p>
	<p>include 지시어는 JSP에서 서블릿 코드를 생성할 때
	텍스트나 코드를 JSP 파일 안으로 포함시키며
	포함되는 파일의 내용은 include 지시어가 있는 위치에 삽입됨</p>
</div>


</body>
</html>