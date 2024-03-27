<%@ page contentType="text/html; charset=UTF-8"%>
<%

	//스크립릿 영역
	
	//이전 페이지(Send04.html)로부터 넘어온 데이터 수신 
	// →userId, userPw, userName, userTel, userGender, userCity, userSubject
	
	request.setCharacterEncoding("UTF-8");

	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String userName = request.getParameter("userName");
	String userTel = request.getParameter("userTel");
	
	String userGender = request.getParameter("userGender");
	String userCity = request.getParameter("userCity");
	
	String userSubjectArr[] = request.getParameterValues("userSubject");
	
	String subjectStr = ""; 
	
	if(userSubjectArr != null) {
		
		for(int i=0; i<userSubjectArr.length; i++) {
			
			subjectStr += "["+userSubjectArr[i]+"]";
			
		}
		
	}
	
	// ※ 추후에는 수선된 데이터를... 쿼리문을 통해 DB에 입력하는
	// 처리과정 등이 포함될 것임을 염두하며 작업을 처리할 수 있도록 하자.
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">
	span {color: blue; font-weight: bold; font-size: 15pt;}
</style>
</head>
<body>

<div>
	<h1>데이터 송수신 실습 04</h1>
	<hr>
</div>

<div>
	<h2>가입승인내역</h2>
	
	<p>아이디 : <span><%=userId %></span></p>
	<p>패스워드 : <span><%=userPw %></span></p>
	<p>이름 : <span><%=userName %></span></p>
	<p>전화번호  : <span><%=userTel %></span></p>
	<p>성별  : <span><%=userGender %></span></p>
	<p>지역  : <span><%=userCity %></span></p>
	<p>수강과목  : <span><%=subjectStr %></span></p>
	
</div>

</body>
</html>