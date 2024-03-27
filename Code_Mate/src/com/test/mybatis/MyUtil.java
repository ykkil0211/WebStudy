package com.test.mybatis;

public class MyUtil
{
	public int getPageCount (int numPerPage, int dataCount)
	{
		int pageCount = 0;
		
		pageCount = dataCount / numPerPage;
		
		if(dataCount%numPerPage !=0)
			pageCount++;
		
		return pageCount;
	}
	
	public String pageindexList(int currentPage, int totalPage, String listUrl) {
		
		StringBuffer strList = new StringBuffer();
		
		// 페이징 처리할 때 게시물 리스트 하단의 숫자를 10개씩 보여주겠음 
		int numPerBlock = 10;
		
		// 현재 페이지(이 페이지를 기준으로 보여주는 숫자가 달라져야 하기 때문)
		int currentPageSetup;
		
		int page;
		int n;
		
		if(currentPage == 0) 
			return "";
		
		// 클라이언트 요청의 형태 → all_mem_list.action → 가공 처리
		
		// 링크를 설정할 URL에 대한 선가공 처리
		if(listUrl.indexOf("?")!=-1) {
			
			listUrl = listUrl + "&";
		} else {
			
			listUrl = listUrl + "?";
		}
		
		// *currentPageSetup =  표시할 첫 페이지
		currentPageSetup = (currentPage/numPerBlock)*numPerBlock;
		
		if(currentPage % numPerBlock == 0) {
			
			currentPageSetup = currentPageSetup - numPerBlock;
		}
		
		// 1페이지 (맨 앞)
		if((totalPage > numPerBlock) && (currentPageSetup > 0)) {
			
			strList.append(" <a href='"+ listUrl +"pageNum=1'>1</a>");
			
		}
		
		// 페이지 이전으로
		n = currentPage - numPerBlock;
		
		if( (totalPage > numPerBlock) && (currentPageSetup > 0)) {
			
			strList.append(" <a href='"+ listUrl +"pageNum="+ n +"'>Prev</a>");


		}
		
		page = currentPageSetup + 1;
		
		while( (page<=totalPage) && (page<=currentPageSetup + numPerBlock)) {
			
			if(page==currentPage)	// 현재 페이지
			{
				strList.append(" <span stlye='color:orange; font-weight: bold;'>"+ page +"</span>");
			}else
			{
				strList.append(" <a href='"+ listUrl +"pageNum="+ page +"'>"+ page +"</a>");
			}
			
			page++;
			
		}
		
		// Next(다음으로)
		n = currentPage + numPerBlock;
		if( (totalPage-currentPageSetup) > numPerBlock )
		{
			strList.append(" <a href='"+ listUrl +"pageNum="+ n +"'>Next</a>");
		}
		
		// 마지막 페이지(맨 마지막으로)
		if( (totalPage>numPerBlock) && (currentPageSetup+numPerBlock<totalPage) )
		{
			strList.append(" <a href='"+ listUrl +"pageNum="+ totalPage +"'>"+ totalPage +"</a>");
		}
		
		return strList.toString();
		
	}

}
