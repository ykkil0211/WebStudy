<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">
</head>
<body>

<div>
	<h1>결과 수신 페이지</h1>
	<h2>HelloReceive03.jsp</h2>
	<hr>
</div>

<div>
	<ul>
		<!-- <li><b>First Name : </b>혜인</li> -->
	 	<li><b>First Name : </b>${fName }</li> 
		<!-- <li><b>List Name : </b>최</li> -->
	 	<li><b>List Name : </b>${lName }</li> 
	</ul>
</div>

</body>
</html>