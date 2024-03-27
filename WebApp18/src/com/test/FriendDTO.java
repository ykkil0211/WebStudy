package com.test;

public class FriendDTO
{
	private String name; // 이름 
	private String age;  // 나이 
	private String gender; // 성별 
	//private String idleType; // 아이돌
	private String[] idleType;
	//-- 이상형은 여러 개의 데이터가 동시에 전달되므로
	// (즉, 다중 선택이 가능하도록 구성하였기 때문에)
	// 배열로 처리할 수 있음.
	
	// getter / setter()
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getAge()
	{
		return age;
	}
	public void setAge(String age)
	{
		this.age = age;
	}
	public String getGender()
	{
		return gender;
	}
	public void setGender(String gender)
	{
		this.gender = gender;
	}
	public String[] getIdleType()        // check~!!
	{
		return idleType;
	}
	public void setIdleType(String[] idleType) // check~!!
	{
		this.idleType = idleType;
	}
	

}
