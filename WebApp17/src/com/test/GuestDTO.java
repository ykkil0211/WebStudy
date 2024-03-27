/*=================
    GuestDTO
=================*/

// ※ 여기에서 사용하는 변수명(속성명)의 앞 두 글자는 소문자로 작성할 것~!! check!
// numScore → getNumScore() / setNumScore()
// nScore   → getNScore()   / setNScore()
//			   getnScore()  / setnScore()
//             getNscore()  / getNscore()
// 와 같이 setter 가 속성명을 불러오는 과정에서
// 인식이 어긋나는 경우가 발생할 수 있기 때문에 

// ※ 여기에서 사용하는 변수명(속성명)은
//    HTML 의 form 태그에서 name 속성으로 지정하여 사용할 것.
//    액션 태그를 활용하여 자동으로 처리해줄 수 있기 때문에 

package com.test;

public class GuestDTO
{
	// 주요 속성 구성 
//	private String name;	//-- 작성자
//	private String title;	//-- 제목
//	private String str; 	//-- 내용

	private String userName; //-- 작성자
	private String subject; //-- 제목
	private String content;  //-- 내용
	
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getSubject()
	{
		return subject;
	}
	public void setSubject(String subject)
	{
		this.subject = subject;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	

}
