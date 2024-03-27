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
<title>AjaxTest04.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">
<style type="text/css">

	#result
	{
		display : inline-block;
		width : 250px;
		color: #F33;
		font-size:small;
	}

</style>
<script type="text/javascript" src="<%=cp%>/js/ajax.js"></script>
<script type="text/javascript">


	function check() {
		
		// 확인
		//alert("확인");
		
		var id = document.getElementById("id").value;
		var url = "test03.do?id="+id;
		ajax = createAjax();
		ajax.open("GET", url, true);
		
		ajax.onreadystatechange = function() 
		{
	
			if (ajax.readyState == 4 && ajax.status == 200)
			{
				callBack();
			}
		};
		
		ajax.send("");
		
	}
	
	function callBack() {
		
		var data = ajax.responseText;
		
		data = parseInt(data);
		
		if (data == 0)
		{
			document.getElementById("result").innerText = "사용 가능한 아이디 입니다.";
		} 
		else
		{
			document.getElementById("result").innerText = "이미 사용중인 아이디 입니다.";
		}
			
	}
	
	function search()
	{
		// 확인
		//alert("함수 호출~!!!");
		
		// 데이터 수집
		var addr = document.getElementById("addr").value;
		
		// URL 준비
		var url = "test04.do?addr=" + addr;
		
		// AJAX 객체(→ XMLHttpRequest 객체) 생성
		ajax = createAjax();
		
		// 설정
		ajax.open("GET", url, true);
		ajax.onreadystatechange = function()
		{
			if (ajax.readyState==4 && ajax.status==200)
			{
				// 수행 업무
				callBack2();
			}
			
		};
		
		ajax.send("");
		
	}

	// 추출된 수행 업무 
	// → 우편번호 검색 결과를 통보받아 
	//    사용자에게 안내해 줄 수 있도록 처리
	function callBack2()
	{
		//var data = ajax.responseText;
		
		// XML 문서 전체의 참조 객체. (흔히... XML 문서 객체라고 함)
		var doc = ajax.responseXML;
		
		// XML 문서의 최상위 엘리먼트(루트 엘리먼트)
		//-- 현재는... 『<list></list>』 엘리먼트
		var root = doc.documentElement;
		
		// 모든 『<item></item>』 엘리먼트 반환 받기
		var itemList = root.getElementsByTagName("item");
		
		//select box 초기화
		document.getElementById("addrResult").innerHTML ="";
		
		//검색 결과 확인 
		if (itemList.length==0)
		{
			document.getElementById("addrResult").innerHTML
			= "<option>주소를 입력하세요.</option>";	
		}
		else
		{
			document.getElementById("addrResult").innerHTML
			= "<option value='0'>주소를 선택하세요.</option>";	
		}
		
		// 검색 결과가 존재할 경우...
		// 반복문을 순환하며 각 데이터 가져오기 
		for (var i=0; i<itemList.length; i++) //-- 수신한 아이템의 갯수만큼 반복 순환
		{
			var zipcode = itemList[i].getElementsByTagName("zipcode")[0];
			var address = itemList[i].getElementsByTagName("address")[0];
			
			// ※ 태그가 가지는 텍스트는
			//    태그의 첫 번째 자식이고...
			//    텍스트 노드의 값은
			//    nodeValue로 가져옴 
			
			var zipcodeText = zipcode.firstChild.nodeValue;
			var addressText = address.firstChild.nodeValue;
			
			// select box에 아이템(<option></option> 추가 
			document.getElementById("addrResult").innerHTML
					+="<option value='" + zipcodeText + "/" + addressText
					+ "'>[" + zipcodeText + "] "+ addressText +"</option>";
		}
		
		
	}
	
/* 	function scroll()
	{
		
	    // 확인
	    alert("함수 호출~!!!");

	
	    var addrResult = document.getElementById("addrResult");
	    var addr = selectedOption.split("/");

	    document.getElementById("addr1").value = addr[0];
	    document.getElementById("addr2").value = addr[1];
	    document.getElementById("addr3").focus();
	 
	} 
*/
	
	function selectZipCode(sel)
	{
		//확인
		// alert("함수 호출");
		
		//확인
		// alert(sel.value);
		
		//04030/서울특별시 마포구 동교로 144-9 (서교동, 서교빌라)
/* 		 document.getElementById("addr1").value = sel.value.split("/")[0];
		 document.getElementById("addr2").value = sel.value.split("/")[1];
		 document.getElementById("addr3").focus();
*/
		
		if(sel.value != "0")
		{
			document.getElementById("addr1").value = sel.value.split("/")[0];
			document.getElementById("addr2").value = sel.value.split("/")[1];
			document.getElementById("addr3").focus();	 
		}
	}
	

</script>
</head>
<body>

<div>
	<h1>회원 가입</h1>
	<p>우편번호 검색</p>
	<hr>
</div>

<table class="table">
	<tr>
		<th>아이디</th>
		<td>
			<input type="text" id="id" class="txt control">
			<input type="button" value="중복검사" class="btn control" onclick="check()">
			<span id="result"></span>
		</td>
	</tr>
	
	<tr>
		<th>이름</th>
		<td>
			<input type="text" id="name" class="txt control">
		</td>
	</tr>
	
	<tr>
		<th>주소</th>
		<td>
			<input type="text" id="addr" class="txt control" placeholder="동 입력">
			<input type="button" value="검색하기" class="btn control" onclick="search()">
			<br>
			<select id="addrResult" class="control" onchange="selectZipCode(this)">
				<option>주소를 입력하세요.</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<th>주소 검색 결과</th>
		<td>
			<input type="text" id="addr1" class="txt control" readonly="readonly"
			style="width: 100px;">
			<br>
			<input type="text" id="addr2" class="txt control" readonly="readonly"
			style="width: 500px;">
			<br>
			<input type="text" id="addr3" class="txt control" placeholder="상세주소를 입력하세요."
			style="width: 500px;">
			<br>
		</td>
	</tr>
	
</table>



</body>
</html>