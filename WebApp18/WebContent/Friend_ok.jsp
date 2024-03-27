<%@ page contentType="text/html; charset=UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); 

%>

	<jsp:useBean id="ob" class="com.test.FriendDTO"></jsp:useBean>
	<jsp:setProperty property="name" name="ob"/>
	<jsp:setProperty property="gender" name="ob"/>
	
<!-- 반복문 필요(다중 선택으로 넘어온 결과값을 출력하기 위한 처리) -->

<%

	String str = "";
	if(ob.getIdleType() != null){
		
		for (String temp : ob.getIdleType())
		{
			str += temp + " ";
		}	
	}
%>
	<jsp:setProperty property="age" name="ob"/>
	<jsp:setProperty property="idleType" name="ob"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Friend_ok.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div>
	<h1>등록 수신결과 확인</h1>
	<hr>
</div>


<div>
	<h2>이름 : <%=ob.getName() %></h2>
	<h2>나이 : <%=ob.getAge() %></h2>
	<h2>성별 : <%=ob.getGender() %></h2>
	<h2>이상형 : <%=str %></h2>
	<h2></h2>
</div>

</body>
</html>