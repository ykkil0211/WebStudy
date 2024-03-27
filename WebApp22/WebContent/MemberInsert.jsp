<%@page import="com.test.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

%>

<%
	// MemberInsert.jsp
	
	//5명 분 데이터 수신 → 객체 구성 → 자료구조 구성 → setAttribute()
	//					    MemberDTO

	
	// → MemberList.jsp에서 출력
	
	String name1 = request.getParameter("name1");
	String name2 = request.getParameter("name2");
	String name3 = request.getParameter("name3");
	String name4 = request.getParameter("name4");
	String name5 = request.getParameter("name5");
	
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String tel4 = request.getParameter("tel4");
	String tel5 = request.getParameter("tel5");
	
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String addr3 = request.getParameter("addr3");
	String addr4 = request.getParameter("addr4");
	String addr5 = request.getParameter("addr5");
	
	
	List<MemberDTO> lists = new ArrayList<MemberDTO>();
	
	for (int i=1; i<=5; i++)
	{
		MemberDTO ob = new MemberDTO(
							request.getParameter("name"+i)
						  , request.getParameter("tel"+i )
					      , request.getParameter("addr"+i ) );
		lists.add(ob);
	}

/* 	MemberDTO ob = new MemberDTO(name1,tel1,addr1);
	lists1.add(ob);
	
	ob = new MemberDTO(name2,tel2,addr2);
	lists1.add(ob);
	
	ob = new MemberDTO(name3,tel3,addr3);
	lists1.add(ob);
	
	ob = new MemberDTO(name4,tel4,addr4);
	lists1.add(ob);
	
	ob = new MemberDTO(name5,tel5,addr5);
	lists1.add(ob);
	 */
	request.setAttribute("lists", lists);

	//Req...
	 
%>

<jsp:forward page="MemberList.jsp"></jsp:forward>
