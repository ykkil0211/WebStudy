<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Frind.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">
	a {text-decoration: none;}
</style>

<script type="text/javascript">

	function sendIt()
	{
		//확인
		//alert("함수호출");
		
		var f = document.myForm;
		
		if(f.name.value== "")
		{
			alert("이름!");
			f.name.focus();
			return;
		}
		
		f.submit();
		
	}


</script>
</head>
<body>

<div>
	<h1>데이터입력</h1>
	<hr>
</div>

<!-- com.test.FriendDTD -->
<!-- Friend_ok.jsp -->

<div>
	<form action="Friend_ok.jsp" method="post" name="myForm">
		<table class="table">
			<tr>
				<th>이름(*)</th>
				<td>
					<input type= "text" class="txt" id="name" name="name">
					<span class="errMsg" id="nameMsg">이름을 입력해주세요</span>
				</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>
					<input type= "text" class="txt" name="age">
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<label>
						<input type="radio" name="gender" value="남자"> 남자
					</label>
					<label>
						<input type="radio" name="gender" value="여자"> 여자
					</label>
				</td>
			</tr>
			<tr>
				<th>이상형</th>
				<td>
					<label >
						<input type="checkbox" name="idleType" value="원빈"> 원빈
					</label>
					<label>
						<input type="checkbox"  name="idleType" value="천우희"> 천우희
					</label>
					<label>
						<input type="checkbox" name="idleType"  name="people"value="카리나"> 카리나
					</label>
					<label>
						<input type="checkbox" name="idleType" value="정우성"> 정우성
					</label>
					<br>
					<label>
						<input type="checkbox" name="idleType" value="이동욱"> 이동욱
					</label>
					<label>
						<input type="checkbox" name="idleType" value="한소희"> 한소희
					</label>
					<label>
						<input type="checkbox" name="idleType" value="정혜인"> 정혜인
					</label>
					<label>
						<input type="checkbox" name="idleType" value="수지"> 수지
					</label>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn" style="width:100%;"
					onclick="sendIt()">등록</button>
				</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>