/*==========================
 	HelloReceive03Controller.java
==========================*/

//현재... 자바의 기본 클래스 Test004
//이를... Servlet 으로 구성하는 방법

// HttpServlet을 상속받는 클래스로 설계 → Servlet

package com.svt;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.HelloReceive03Model;

public class HelloReceive03Controller extends HttpServlet
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
		
		request.setCharacterEncoding("UTF-8");
		
		// Model 객체 연결 → 업무 로직 수행, View 정보 얻어내기 
		HelloReceive03Model model = new HelloReceive03Model();
		String view = model.process(request, response);
		
		// View 객체 연결
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	
}
