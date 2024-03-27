<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TestSession01.jsp</title>
<link rel="stylesheet" type="text/css" href="css/MemberScore.css">

<script type="text/javascript">

	function send() {
		
		
		var f = document.formCheck;
		
		if(!f.userName.value) {
			
			alert("이름을 입력하세요");
			f.userName.focus();
			return;
		}
		
		if(!f.userTel.value) {
			
			alert("전화번호를 입력하세요");
			f.userTel.focus();
			return;
			
		}
		
		f.submit();
	}

</script>
</head>
<body>

<!-- ○ TestSession01.jsp 에서 TestSession02.jsp 페이지로
        이름과 전화번호를 입력받아 전송
        
        TestSession02.jsp에서 TestSession03.jsp 페이지로
        아이디와 패스워드를 입력받고
        앞에서 전달받은 이름과 전화번호를 함께 전송
        
        TestSession03.jsp에서 전달받은 이름, 전화번호, 아이디, 패스워드 출력
        
        01 →→→→→→→ 02 →→→→→→→→ 03
        이름, 전화        아이디, 패스워드    이름, 전화, 아이디, 패스워드 
        입력              입력                출력

						 - getParameter       - getAttribute

	※ 즉, 01에서 02로 넘겨받을 땐 getParameter
	   02 에서 03으로 넘겨받을땐 getParameter와 getAttribute로 세션 활용
	   01 에서 03으로 직접 넘겨줄 수 없기 때문에 세션(session)에 저장
	   
	※ session 외에 input 태그 hidden 속성을 이용한 정보 전달 가능~!
        
-->
<div>
	<h1>이름 전화번호 입력</h1>
	<hr>
</div>

<div>
	<form action="TestSession02.jsp" method="post" name="formCheck">
		<table>
			<tr>
				<th>이름</th>
					<td>
						<input type="text" name="userName" class="txt">
						</td>
					</tr>
			<tr>
				<th>전화번호</th>
						<td>
							<input type="text" name="userTel" class="txt">
						</td>
					</tr>
			<tr>
				<td colspan="2">
				<button type="button" class="btn" style="width: 100%"
				onclick="send()">입력하기</button>
			</tr>
		</table>
	</form>
</div>

</body>
</html>