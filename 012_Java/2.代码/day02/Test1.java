/*package com.hqyj.Test.day02;
 * static:静态，修饰变量，方法。
 * 
 * 调用方法:
 * 类名.属性；
 * 类名.方法。
 * 
 * 注意:
 * static修饰的方法不能调用非static修饰的方法和变量
 * 非static可以调用static修饰的方法和属性
 * 
 * 
 * static{}初始化器，用来初始化静态变量。只调用一次。
 

public class Test1 {
	
	public static void main(String[] args) {
		TestS  t = new TestS();
		TestS  t1 = new TestS();
		TestS  t2 = new TestS();
		TestS  t3 = new TestS();
		t.show();
		int a = TestS.a;
		TestS.show();
	}
}
class TestS{
	static int a =10;
	int b =20;
	static  void show(){
		  System.out.println(".....");
	  }
	void method(){
		show();
	}
	
	{
		System.out.println("2游离块");
	}
	
	static{
		System.out.println("1初始化器");
	}
	TestS(){
		System.out.println("3空参构造方法");
	}
}*/