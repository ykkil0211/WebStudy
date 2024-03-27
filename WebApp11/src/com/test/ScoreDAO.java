package com.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.DBConn;

public class ScoreDAO
{
	
	private Connection conn;
	
	//데이터베이스 연결
	public ScoreDAO() throws ClassNotFoundException, SQLException {
		
		conn = DBConn.getConnection();
	}
	
	// 성적 입력 메소드
	public int add(ScoreDTO dto) throws SQLException {

	    int result = 0;

	    // 쿼리문 구성
	    String sql = "INSERT INTO TBL_SCORE(SID, NAME, KOR, ENG, MAT) VALUES(SCORESEQ.NEXTVAL, ?, ?, ?, ?)";

	    // 작업객체 생성
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    
	    pstmt.setString(1, dto.getName());
	    pstmt.setInt(2, dto.getKor());
	    pstmt.setInt(3, dto.getEng());
	    pstmt.setInt(4, dto.getMat());

	    result = pstmt.executeUpdate();

	    pstmt.close();

	    return result;
	}

	
	//성적 출력 메소드
	public ArrayList<ScoreDTO> lists() throws SQLException {
		
		ArrayList<ScoreDTO> result = new ArrayList<ScoreDTO>();
		
		//쿼리문 생성 
		String sql = "SELECT SID, NAME, KOR, ENG, MAT"
				+ ", (KOR+ENG+MAT) AS TOT"
				+ ", (KOR+ENG+MAT)/3 AS AVG FROM TBL_SCORE ORDER BY SID";
		
		//작업 객체 생성 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			
			ScoreDTO dto = new ScoreDTO();
			
			dto.setSid(rs.getString("SID"));
			dto.setName(rs.getString("NAME"));
			dto.setKor(rs.getInt("KOR"));
			dto.setEng(rs.getInt("ENG"));
			dto.setMat(rs.getInt("MAT"));
			dto.setTot(rs.getInt("TOT"));
			dto.setAvg(rs.getInt("Avg"));
			
			result.add(dto);
		}
		rs.close();
		pstmt.close();
		
		return result;
		
	}
	
	//전체 인원 수 출력 메소드 
	public int count() throws SQLException {
		
		int result = 0;
		
		//쿼리문 생성
		String sql = "SELECT COUNT(*) AS COUNT FROM TBL_SCORE";
		
		//작업 객체 생성 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next())
			result= rs.getInt("COUNT");
		
		rs.close();
		pstmt.close();
		
		
		return result;
		
	}
	
	public void close() throws SQLException {
		DBConn.close();
	}
}
