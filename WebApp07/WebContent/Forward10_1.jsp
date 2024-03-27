<%@ page contentType="text/html; charset=UTF-8"%>
<%
	// Forword10_1.jsp

	// 이전 페이지(Send10.jsp)로부터 넘어온 데이터 수신 
	// → num1, calResult, num2
	
	String num1Str = request.getParameter("num1");
	String num2Str = request.getParameter("num2");
	String calResult = request.getParameter("calResult");
	
	int num1 = 0;
	int num2 = 0;
	String result = "";
	
	try 
	{
		
		num1 = Integer.parseInt(num1Str);
		num2 = Integer.parseInt(num2Str);
		
		if(calResult.equals("1"))
			result = String.format("%d + %d = %d", num1,num2, (num1+num2));
		else if(calResult.equals("2"))
			result = String.format("%d - %d = %d", num1,num2,(num1-num2));
		else if(calResult.equals("3"))
			result = String.format("%d * %d = %d", num1,num2, (num1*num2));
		else if(calResult.equals("4"))
			result = String.format("%d / %d = %d",num1,num2,(num2/(double)num2));
	
	} 
	catch (Exception e) 
	{
		System.out.println(e.toString());	
		
	}
	
	//요청에 내용 추가 
	request.setAttribute("resultStr", result);
	
	//check~!
	RequestDispatcher dispatcher = request.getRequestDispatcher("Receive10.jsp");
	dispatcher.forward(request, response);
	
	/*=============================================================
	■■■ 『RequsetDispatcher』 인터페이스 ■■■
	
	※ 이 인터페이스는 『forward()』 와 『include』만 있음
	
	※ 처리 과정 및 개념 
	   일반적으로 HttpServlet을 상속받은 클래스.. 서블릿
	   
	   이렇게 작성된 클래스 내부에는
	   실제 요청을 서비스하는 『doGet()』과 『doPost()』 메소드가
	   정의되어 있으며 (service() 메소드가 이들의 상위 메소드)
	   
	   ServletContainer는 『HttpServlet』의 인스턴스를 생성하고,
	   『init()』 메소드를 실행해주고,
	   이 메소드에 의해 매핑된 URL에 
	   (페이지 요청 방식에 따라) doGet()과 doPost() 중 선택하여 
	   메소드를 호출해주고 (실행시켜 주고)
	   Container가 종료될 때 『destroy()』 메소드를 호출해주고,
	   관련된 처리 과정이 마무리됨 
	   
	   즉 ServletContainer가 
	   init() → 처음
	   service() → 중간중간 요청이 있을때마다 
	   destroy() → 마지막
	   메소드가 호출함
	   (절대 우리가 호출하는 것이 아님)
	   
	   결국 『HttpServlet』은
	   하나의 인스턴스만 생성되어 멀티 스레딩으로 돌아가게 됨
	   
	   이렇게 구성되는 『HttpServlet』의 상속된 클래스의 인스턴스는
	   스레드에 안전하게 설계(스레드 세이프티)되어야 하고
	   따라서 스레드에 안전하게 설계하지 않을 경우 
	   상위 클래스를 마구 접근하게 되어 에러가 발생할 수 밖에 없음 
	   
	   이와 같은 이유로 환경 설정이나 J2EE 서비스에 관한 내용은
	   『ServletContext』에서 할 수 있게 됨 
	   (※ ServletContext : 서블릿에 대한 환경, 상태 등을 설정할 수 있는 객체)
	   이 『ServletContext』는 『getServletContext』로만 받을 수 있음 
	   그렇기 때문에 『getServletContext()』는 동기화가 제대로
	   구현되었을 것이라고 예측할 수 있음 
	   그 이유는 멀티 스레드에 안전하게 (세이프티)되어 있어야 
	   우리가 『ServletContext』의 『setAttribute()』 나 『getAttribute()』를
	   스레드 걱정 없이 마음대로 읽고 쓸 수 있기 때문임 
	   
	   『ServletContext』의  또 다른 커다란 기능 중 하나는 
	   다른 서블릿 인스턴스를 가져올 수 있다거나 
	   서블릿 환경 설정ㄱ밧을 가져올 수 있다는 기능임 
	   
	   『RequestDispacther』 역시 그 기능 중의 하나임
	   사전적인 의미로는... 요청을 제공하는 도구
	   즉, 요청을 보내주는 인터페이스임
	   
	   현재.. 요청을 다른 서블릿(혹은 JSP)으로 보내야 하는 상황
	   그런데, 위에 언급한 바와 같이 서블릿의 인스턴스는 하나만 생성되고 
	   이것이 멀티 스레딩으로 돌아가고 있음
	   
	   그렇기 때문에 새로운 서블릿을
	   그 서블릿을 실행하는 것으로는 안되고
	   이미 돌아가고 있는 서블릿 인스턴스의 스레드를
	   하나 더 추가해야 함 
	   이것은 서블릿 개발자가 처리해야 할 영역을 벗어났기 때문에 
	   이 일은 『Dispatcher』가 대신 수행해 준다는 것임 
	   
	   하지만, 이 『Dispatcher』는 
	   『HttpServletRequest』, 『hTtpServletResponse』를
	   생성해 줄 수 없음
	   그렇기 때문에 『Dispatcher』가 생성해준 새로운 서블릿 스레드를
	   실행시키기 위해 『doGet()』이나 『doPost()』를 호출해야 함
	   
	   이와 같은 이유로 
	   『dispatcher.forword(request,response);』 구문을 통해 
	   request 와 response를 넘겨주는 것임
	   
	===============================================================*/
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward_1.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

</body>
</html>