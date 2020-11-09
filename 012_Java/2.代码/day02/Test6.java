package com.hqyj.Test.day02;
/*
 * 值传递  和 引用传递：
 * 基本数据类型是值传递，传递的是具体的值。
 * 传递的是具体的值的副本，传递之后值的本身没有改变。
 * 引用数据类型传递的是地址值。
 * 可以通过该地址修改对象当中的属性。
 */
class Student{
	String name="李四";
}

public class Test6 {
	public static void main(String[] args) {
		Student s = new Student();
		System.out.println("传递之前的student对象的值"+s.name);
		method(s);
		System.out.println("传递之后的对象的值:"+s.name);
		
	}
	
	static void method(Student s){
		s.name="张三";
		System.out.println("方法中student对象的值"+s.name);
	}
	
	
	
	
	
	
	
	
/*	public static void main(String[] args) {
		int  i = 10;
		System.out.println("传递之前的值:"+i);
		method(i);
		System.out.println("传递之后的值:"+i);
	}
	//
	static void method(int a){
		int b = a+100;
		System.out.println("在方法中的值:"+b);
	}*/
}

