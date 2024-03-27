/*==========================
 	ServletSample.java
==========================*/

//현재... 자바의 기본 클래스 Test004
//이를... Servlet 으로 구성하는 방법

// HttpServlet을 상속받는 클래스로 설계 → Servlet

package com.test.ajax;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test03 extends HttpServlet
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
		
		//이전 페이지로부터 넘어온 데이터 수신
		//id 수신
		
		String id = request.getParameter("id");
		
		// id가 pbg 일 경우 
				// Model → DB 액션 처리 요청 → DAO (처리 요청)
				//                               ---------------
				//                               DTO, Connection 활용
				
				// → SELECT COUNT(*) AS COUNT FROM MEMBER WHERE ID = 'pbg';
				//           -----------------                        ------
				//               수신 처리                          넘겨주는 데이터
				//             --==> 1 or 0  
				
				// ※ DB 구성을 별도로 하지 않았기 때문에 
				//    컬랙션 자료구조 대신함~!
				
				
		/*
		 * String result ="";
		 * 
		 * list.add("superman"); list.add("batman"); list.add("admin");
		 * 
		 * for (int i=0; i<list.size(); i++) {
		 * 
		 * if (id.equals(list.get(i))) {
		 * 
		 * result = "중복된 아이디 입니다."; break;
		 * 
		 * } else {
		 * 
		 * result = "중복되지 않는 아이디입니다."; }
		 * 
		 * }
		 */
		List<String> db = new ArrayList<String>();
		
		db.add("superman");
		db.add("batman");
		db.add("admin");
		
		int result = 0;
		
		for (String item : db)
		{
			if (item.equals(id))
			{
				result = 1;
			}
		}
		
		
		
		request.setAttribute("result",result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Test03_ok.jsp");
		dispatcher.forward(request, response);
	}
	
}
