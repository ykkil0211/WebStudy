/*==========================
 	ServletSample.java
==========================*/

//현재... 자바의 기본 클래스 Test004
//이를... Servlet 으로 구성하는 방법

// HttpServlet을 상속받는 클래스로 설계 → Servlet

package com.test.ajax;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoadTest03 extends HttpServlet
{

	private static final long serialVersionUID = 1L;

	// 사용자의 http 프로토콜 요청이 GET 방식일 경우 호출되는 메소드
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGetPost(request, response);
	}

	// 사용자의 http 프로토콜 요청이 POST 방식일 경우 호출되는 메소드
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGetPost(request, response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//GET 방식이든 POST 방식이든
		//어떤 방식의 요청에도 모두 처리할 수 있는 사용자 정의 메소드
		
		//이전 페이지(LoadTest03.jsp)로부터 넘어온 데이터 수신
		// → su1, su2, oper 
		int su1 = Integer.parseInt(request.getParameter("su1"));
		int su2 = Integer.parseInt(request.getParameter("su2"));
		String oper = request.getParameter("oper");

		int result = 0;		
		
		if(oper.equals("add")) 
		{
			result = su1 + su2;			
		}
		else if(oper.equals("sub")) 
		{
			result = su1 - su2;			
		}
		else if(oper.equals("mul")) 
		{
			result = su1 * su2;			
		}
		else if(oper.equals("div")) 
		{
			result = su1 / su2;			
			//result = String.format("%d / %d = %2.f",su1,su2, ((double)su1/su2));
		}
		
		
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("LoadTest03_ok.jsp");
		dispatcher.forward(request, response);
		

	}
	
}
