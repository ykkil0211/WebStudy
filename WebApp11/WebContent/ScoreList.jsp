<%@page import="com.test.ScoreDTO"%>
<%@page import="com.test.ScoreDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	
	StringBuffer str = new StringBuffer();
	ScoreDAO dao = null;
	
	String memberCount = "<span id='memberCount'>전체 인원수 : </span>"; // 5명</span>

	try {
		
		dao = new ScoreDAO();
		
		memberCount += dao.count() + "명</span>";
		
		str.append("<table class='table'>");
		str.append("<tr><th>번호</th><th>이름</th><th>국어점수</th><th>영어점수</th><th>수학점수</th><th>총점</th><th>평균</th></tr>");
		
		for (ScoreDTO member : dao.lists())
		{
			str.append("<tr>");
			str.append("<td class='recold'>" + member.getSid() + "</td>");
			str.append("<td class='recold'>" + member.getName() + "</td>");
			str.append("<td class='recold'>" + member.getKor() + "</td>");
			str.append("<td class='recold'>" + member.getEng() + "</td>");
			str.append("<td class='recold'>" + member.getMat() + "</td>");
			str.append("<td class='recold'>" + member.getTot() + "</td>");
			str.append("<td class='recold'>" + member.getAvg() + "</td>");
			str.append("</tr>");
		}
		
		str.append("</table>");
		
		
	} catch (Exception e) {
		
		System.out.println(e.toString());
		
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScoreList.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">
    .record {text-align: center;}
    input {width: 200px; border-radius: 6px;}
    button {width: 320px; height: 40px; font-family: 맑은 고딕; font-weight: bold;}
    .errMsg {font-size: small; color: red; display: none;}
</style>
<script type="text/javascript">

	function formCheck() {
		
		//확인
		//alert("함수 호출");	
		
		//return false;
		
		var name = document.getElementById("name");
		var nameMsg = document.getElementById("nameMsg");
		
		nameMsg.style.display="none";
		
		if(name.value=="")
		{
	
			nameMsg.style.display="inline";
			name.focus();
			return false;
		}
		if(kor.value > 100 ) {
			
			korMsg.style.display="inline";
			kor.focus();
			return false;
		}
		
		if(eng.value > 100 ) {
			
			engMsg.style.display="inline";
			eng.focus();
			return false;
		}
		
		if(mat.value > 100 ) {
			
			matMsg.style.display="inline";
			mat.focus();
			return false;
		}
		return true;
	}

</script>
</head>
<body>

<div>
	<h1>성적 입력 프로그램</h1>
	<hr>
</div>

<div>
	<form action="ScoreInsert.jsp" method="post" onsubmit ="return formCheck();">
		<table>
			<tr>
				<th>이름</th>
				<td>
					<input type="text" id="name" name="name" class="txt">
					<span class="errMsg" id="nameMsg">이름을 입력해야 합니다.</span>
				</td>
			</tr>
				<tr>
				<th>국어점수</th>
				<td>
					<input type="text" id="kor" name="kor" class="txt">
					<span class="errMsg" id="korMsg">0점부터 100점 이내 입력해야 합니다.</span>
					
				</td>
			</tr>
				<tr>
				<th>영어점수</th>
				<td>
					<input type="text" id="eng" name="eng" class="txt">
					<span class="errMsg" id="engMsg">0점부터 100점 이내 입력해야 합니다.</span>
					
				</td>
			</tr>
				<tr>
				<th>수학점수</th>
				<td>
					<input type="text" id="mat" name="mat" class="txt">
					<span class="errMsg" id="matMsg">0 점부터 100점 이내 입력해야 합니다.</span>
				
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn" id="btnAdd">입력하기</button>
				</td>
			</tr>
		</table>
	</form>
</div>

<div>
	<%=memberCount %>
	
	<%=str.toString() %>
</div>

</body>
</html>