package com.hqyj.Test.day02;
/*
 * 匿名内部类:
 * 
 *  格式:
 *  		new 接口或抽象类的类名（）{
 *  		
 *  		实现的方法(){
 *  		}
 *  }.实现后的方法
 */

public class Test9 {
	public static void main(String[] args) {
		new C(){
			@Override
			void method() {
		System.out.println("匿名内部类实现的方法");
			}
		}.method();
		/*S    s  = new S();
		s.method();*/
	}
}
abstract class C{
	abstract void method();
}

class S extends C{

	@Override
	void method() {
	System.out.println("方法");
		
	}
	
}
