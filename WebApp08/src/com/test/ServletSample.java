/*========================
 	ServletSample.java
=========================*/

package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Test004.java (Servlet) 에서는
// GenericServlet 을 extends 를 상속하자마자 에러가 났었지만,
// HttpServlet 을 extends 하겠다고 했을 땐, 에러가 나지 않았다.
// ★ 추상 클래스이지만 추상 메소드를 갖고 있지 않은 것이다!!


// [GenericServlet] → service() Overriding
// [HttpServlet] → doGet(), doPost() Overriding



public class ServletSample extends HttpServlet
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
	
	// 사용자 정의 메소드
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// GET 방식이든 POST 방식이든
		// 어떤 방식의 요청에도 모두 처리할 수 있는 사용자 정의 메소드
		
	}
	
}
