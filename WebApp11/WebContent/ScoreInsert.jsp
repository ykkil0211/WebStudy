<%@page import="com.test.ScoreDTO"%>
<%@page import="com.test.ScoreDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat");
	
	int skor = Integer.parseInt(kor);
	int seng = Integer.parseInt(eng);
	int smat = Integer.parseInt(mat);
	
	ScoreDAO dao = null;
	
	try {
		
		dao = new ScoreDAO();
		
		ScoreDTO dto = new ScoreDTO();
		
		dto.setName(name);
		dto.setKor(skor);
		dto.setEng(seng);
		dto.setMat(smat);
		
		dao.add(dto);
		
		
	} catch(Exception e) {
		
		System.out.println(e.toString());
		
	} finally {
		
		try {
			
			dao.close();
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
	response.sendRedirect("ScoreList.jsp");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

</body>
</html>