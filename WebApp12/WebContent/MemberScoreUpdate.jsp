<%@page import="com.test.MemberScoreDTO"%>
<%@page import="com.test.MemberScoreDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	
	//MemberScoreUpdate.jsp
	
	//이전 페이지로(MemberScoreUpdateForm.jsp)로부터 넘어온 데이터 수신
	// → sid, kor, eng, mat
	
	request.setCharacterEncoding("UTF-8");
	
	String sid = request.getParameter("sid");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat");
	
	int skor = Integer.parseInt(kor);
	int seng = Integer.parseInt(eng);
	int smat = Integer.parseInt(mat);

	//MemberScoreDAO 인스턴스 생성
	MemberScoreDAO dao = new MemberScoreDAO();
	
	try
	{
		dao.connection();
		
		MemberScoreDTO member = new MemberScoreDTO();
		
		member.setSid(sid);
		member.setKor(skor);
		member.setEng(seng);
		member.setMat(smat);
		
		dao.modify(member);
		
		//위 메소드 호출 결과 반환값을 활용한 분기 처리 가능~!
		
	}
	catch(Exception e)
	{		
			System.out.println(e.toString());
	}
	finally
	{
		try
		{
			dao.close();
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
	//변경된 URL로 다시 요청할 수 있도록 안내 
	response.sendRedirect("MemberScoreSelect.jsp");

	//이후 코드 제거
%>
