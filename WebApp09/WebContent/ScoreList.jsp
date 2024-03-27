<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	
	String str = "";
	
	Connection conn = DBConn.getConnection();
	
	String sql = "SELECT SID, NAME, KOR, ENG, MAT"
			+ ", (KOR+ENG+MAT) AS TOT"
			+ ", (KOR+ENG+MAT)/3 AS AVG FROM TBL_SCORE"
			+ " ORDER BY SID";
	
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);
	
	str += "<table class='table'>";
	
	str += "<tr>";
	str += "<th>번호</th>";
	str += "<th>이름</th>";
	str += "<th>국어점수</th>";
	str += "<th>영어점수</th>";
	str += "<th>수학점수</th>";
	str += "<th>총점</th>";
	str += "<th>평균</th>";
	str += "</tr>";
	
	while (rs.next())
	{
		str += "<tr>";
		str += "<td>" + rs.getString("SID") + "</td>";
		str += "<td>" + rs.getString("NAME") + "</td>";
		str += "<td>" + rs.getString("KOR") + "</td>";
		str += "<td>" + rs.getString("ENG") + "</td>";
		str += "<td>" + rs.getString("MAT") + "</td>";
		str += "<td>" + rs.getString("TOT") + "</td>";
		//str += "<td>" + String.format("%.1f", Double.parseDouble(rs.getString("AVG"))) + "</td>";
		str += "<td>" + String.format("%.1f", rs.getDouble("AVG")) + "</td>";
		str += "</tr>";
	}
	
			
	str += "</table>";


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScoreList.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">
	.errorMsg {color: red; font-size: small; display: none;}

	input {width: 200px;}
	button {width: 208px; height: 50px; font-weight: bold;}
	#numTitle {width: 50px;}
	#nameTitle {width: 100px;}
	#telTitle {width: 160px;}
	.errMsg {font-size: small; color: red; display: none;}
	.contentTd {text-align: center;}
</style>
</style>

<script type="text/javascript">
	
	function inputCheck()
	{
		// 이름에 해당하는 입력값 가져오기
		// 국어, 영어, 수학 점수에 해당하는 입력값 가져오기
		
		var stuName = document.getElementById("stuName");
		var strKor = document.getElementById("kor");
		var strEng = document.getElementById("eng");
		var strMat = document.getElementById("mat");
		
		var errName = document.getElementById("errorName");
		var errKor = document.getElementById("errorKor");
		var errEng = document.getElementById("errorEng");
		var errMat = document.getElementById("errorMat");
		
		errName.style.display = "none";
		errKor.style.display = "none";
		errEng.style.display = "none";
		errMat.style.display = "none";
		
		
		var kor = Number(strKor.value);
		var eng = Number(strEng.value);
		var mat = Number(strMat.value);
		
		var flag = true;
		
		
		// 이름의 값이 입력되지 않았으면 오류.
		
		
		
		
		// 국어, 영어, 수학 점수 중 어느 하나라도
		// 0 ~ 100 까지의 수가 아닐 때 오류.
		
		
		if (stuName.value == "")
		{
			errName.style.display = "inline";
			return false;
		}
		if (kor < 0 || kor > 100 || strKor.value == "" || isNaN(strKor.value))
		{
			errKor.style.display = "inline";
			return false;
		}
		if (eng < 0 || eng > 100 || strEng.value == "" || isNaN(strEng.value))
		{
			errEng.style.display = "inline";
			return false;
		}
		if (mat < 0 || mat > 100 || strMat.value == "" || isNaN(strMat.value))
		{
			errMat.style.display = "inline";
			return false;
		}
		
		
		
	}
	
</script>
</head>
<body>

<!--  
	○ WebApp09
	   
	   - 여러 명의 이름, 국어점수, 영어점수, 수학점수를 입력받아
	     총점과 평균을 계산하여 리스트를 출력해줄 수 있는 프로그램을 구현한다.
	   - 리스트 출력 시 번호 오름차순 정렬하여 출력할 수 있도록 한다.
	   - 데이터베이스 연동하여 처리한다.
	     (TBL_SCORE, SCORESEQ 활용)
	   - 즉, 성적 처리 프로그램을 데이터베이스 연동하여
	     JSP 로 구성할 수 있도록 한다.
	     
	     
	   데이터베이스 연결 및 데이터 처리
	   ------------------------------------------------------------------------
	   성적 처리
	   
	   이름(*)   [ textbox ] → 이름 입력 확인
	   국어점수  [ textbox ] → 0 ~ 100 사이의 정수가 입력되었는지 확인 
	   영어점수  [ textbox ] → 0 ~ 100 사이의 정수가 입력되었는지 확인  
	   수학점수  [ textbox ] → 0 ~ 100 사이의 정수가 입력되었는지 확인 
	   
	   < 성적 추가 >		 → button
	   
	   번호		이름		국어점수 영어점수 수학점수		총점	평균
	     1	   임하성			90		80		70			xxx		xx.x
	     2	   이윤수			80		70		60			xxx		xx.x
	     
	   ------------------------------------------------------------------------
	   
	   ○ WebApp09_scott.sql
	      ScoreList.jsp
	      ScoreInsert.jsp
	      com.util.DBConn.java
	      
-->

<div>
	성적 처리
	<br>
	<form action='ScoreInsert.jsp' method='post' onsubmit="return inputCheck()">
		<table>
			<tr>
				<td>이름(*)</td>
				<td>
					<input type="text" name="stuName" id="stuName">
				</td>
				<td class='errorMsg' id='errorName'>이름은 필수 입력사항입니다.</td>
			</tr>
			<tr>
				<td>국어점수</td>
				<td>
					<input type="text" name="kor" id="kor">
				</td>
				<td class='errorMsg' id='errorKor'>국어 점수를 0 ~ 100까지의 정수로 입력하세요.</td>
			</tr>
			<tr>
				<td>영어점수</td>
				<td>
					<input type="text" name="eng" id="eng">
				</td>
				<td class='errorMsg' id='errorEng'>영어 점수를 0 ~ 100까지의 정수로 입력하세요.</td>
			</tr>
			<tr>
				<td>수학점수</td>
				<td>
					<input type="text" name="mat" id="mat">
				</td>
				<td class='errorMsg' id='errorMat'>수학 점수를 0 ~ 100까지의 정수로 입력하세요.</td>
			</tr>
			<tr>
				<td>
					<button type="submit" style='width: 150px'>
						성적 추가
					</button>
				</td>
			</tr>
		</table>
	</form>

</div>

<div>
	<%=str %>
</div>

</body>
</html>