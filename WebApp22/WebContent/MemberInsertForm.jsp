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
<title>MemberInsertForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div>
	<h2>JSTL 코어(Core)를 활용한 회원 정보 입력</h2>
	<hr>
</div>

<div>
	<form action="MemberInsert.jsp" method="post">
	
		<!-- (이름, 전화번호, 주소) * 5명분  -->
		<table class="table">
<!-- 			<tr>
				<th>이름</th>
				<th>전화번호</th>
				<th>주소</th>
			</tr> -->
			<!-- <tr>
				<td>
					<input type="text" id="name" name="name" class="txt">
				</td>
				<td>
					<input type="text" id="tel" name="tel" class="txt">
				</td>
				<td>
					<input type="text" id="addr" name="addr" class="txt">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" id="name2" name="name2" class="txt">
				</td>
				<td>
					<input type="text" id="tel2" name="tel2" class="txt">
				</td>
				<td>
					<input type="text" id="addr2" name="addr2" class="txt">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" id="name3" name="name3" class="txt">
				</td>
				<td>
					<input type="text" id="tel3" name="tel3" class="txt">
				</td>
				<td>
					<input type="text" id="addr3" name="addr3" class="txt">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" id="name4" name="name4" class="txt">
				</td>
				<td>
					<input type="text" id="tel4" name="tel4" class="txt">
				</td>
				<td>
					<input type="text" id="addr4" name="addr4" class="txt">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" id="name5" name="name5" class="txt">
				</td>
				<td>
					<input type="text" id="tel5" name="tel5" class="txt">
				</td>
				<td>
					<input type="text" id="addr5" name="addr5" class="txt">
				</td>
			</tr> -->
			<tr>
				<th>이름</th>
				<td>
				<c:set var="i" value="1"></c:set>
				<c:forEach var="a" begin="1" end="5" step="1">
					<input type="text" name="name${i }">
					<c:set var="i" value="${i+1 }"></c:set>
				</c:forEach>		
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>
				<c:set var="i" value="1"></c:set>
				<c:forEach var="a" begin="1" end="5" step="1">
					<input type="text" name="tel${i }">
					<c:set var="i" value="${i+1 }"></c:set>
				</c:forEach>		
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
				<c:set var="i" value="1"></c:set>
				<c:forEach var="a" begin="1" end="5" step="1">
					<input type="text" name="addr${i }">
					<c:set var="i" value="${i+1 }"></c:set>
				</c:forEach>		
				</td>
			</tr>		
		<tr>
			<!-- submit 액션 처리 -->
			<td colspan="2">
				<button type="submit" class="btn" style="width: 100%;">결과확인</button>
			</td>
		</tr>
		</table>
		<br>
	</form>
</div>

</body>
</html>