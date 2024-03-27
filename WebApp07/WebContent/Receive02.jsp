<%@ page contentType="text/html; charset=UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat");
	
	int mkor = Integer.parseInt(kor);
	int meng = Integer.parseInt(eng);
	int mmat = Integer.parseInt(mat);
	
	int sum = mkor + meng + mmat;
	double avg = sum/3.0;
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Receive02.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">
	span {color: blue; font-weight: bold; font-size: 15pt;}
</style>

</head>
<body>

<div>
	<h1>데이터 송수신 실습 02</h1>
	<hr>
</div>

<div>
	<h3>성적 입력 완료</h3>
	<span><%=name %>님</span>, 
	성적 처리가 완료되었습니다.<br>
	회원님의 점수는 국어:<span><%=mkor %></span>점, 영어 <span><%=meng %></span>점 수학:<span><%=mmat %></span>점 입니다<br>
	총점은 <span><%=sum %></span>점, 평균은 <span><%=String.format("%.1f",avg) %></span>입니다.
</div>
</body>
</html>