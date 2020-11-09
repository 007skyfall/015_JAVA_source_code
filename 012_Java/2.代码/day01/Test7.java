package com.hqyj.Test.day01;

/*
 * this:
 * 		代表的是当前对象的引用
 * this.name = name 用于区分局部变量中同名的变量。
 * 
 * this.name 指向的是堆内存当中的属性。
 * 
 * 总结:this代表当前对象，构造方法被那个对象调用构造方法当中的this就代表那个对象。
 * 那个对象调用了这个方法，这个方法中的this就代表这个对象。
 * 
 * 
 * 
 */

public class Test7 {
public static void main(String[] args) {
	Zi z = new Zi();
	z.setName("张三");
	System.out.println(z.getName());
}
}
class Zi 
{
	String name;
	Zi(){
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	void show(){
		System.out.println(this.name);
	}
	
	
	{
		System.out.println("哭");
	}
	
	
}