<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	//스크립릿 영역
	
	String num1str = request.getParameter("su1");
	String num2str = request.getParameter("su2");
	String op = request.getParameter("op");
	 
	String result = "";
	
	int num1 = 0;
	int num2 = 0;
	
	try{
		
		num1 = Integer.parseInt(num1str);
		num2 = Integer.parseInt(num2str);
		
		if(op.equals("+")){
			result = String.valueOf(num1+num2);
			
		} else if(op.equals("-")) {
			result = String.valueOf(num1-num2);
			
		} else if (op.equals("*")) {
			result = String.valueOf(num1*num2);
			
		} else if(op.equals("/")) {
			
			//result = String.valueOf(num1/num2);
			//result = String.valueOf(num1/(double)num2);
			result = String.format("%.1f",num1/(double)num2);
		}
	
		
	} catch (Exception e){
		
		
	}
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
	입력하신 <span><%=num1 %></span>와(과) <span><%=num2 %></span>의
	연산 결과는 <span id="result"><%=result %></span>입니다.
</div>

</body>
</html>