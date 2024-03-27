<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*,java.net.*" %>
<%

    request.setCharacterEncoding("UTF-8");
    String cp = request.getContextPath();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test9.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div>
    <h1>JSTL 코어(Core) import문</h1>
    <hr>
</div>

<div>
    <p>『c:import』는 URL 처리에 관련하여, URL을 활용하여 다른 자원의 결과를 삽입할 때 사용</p>
</div>
<br><br>

<!-- 변수 지정 -->
<c:set var="url" value="Gugudan.jsp"></c:set>

<!-- import를 수행 -->
<c:import url="${url}" var="impt">
    <!-- import를 수행하며 해당 페이지가 필요로 하는 파라미터 넘기기 -->
    <c:param name="dan" value="7"></c:param>
</c:import>

<!-- 결과 화면 출력 -->
<c:out value="${impt}" escapeXml="false"></c:out>

</body>
</html>
