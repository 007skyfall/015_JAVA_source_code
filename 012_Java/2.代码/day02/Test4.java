/*package com.hqyj.Test.day02;

 * 接口:天生的父类，接口当中定义的方法只能是抽象方法，
 * 接口当中定义的变量默认是常量
 * 接口不能直接new对象
 * 子类  实现接口  必须实现接口当中定义的方法否则编程抽象类。
 * 接口：为了解决java单继承的局限性。
 

public class Test4 {

}
interface TestIA extends TestIB,TestIC{
	final  String src="";
	final int a =10;
	void methodA();
}
interface TestIB{
	void methodB();
}
interface TestIC{
	void methodC();
}
interface TestID{
	void methodD();
}
 class TestSS extends Test1 implements TestIA,TestID{
	@Override
	public void methodB() {
		// TODO Auto-generated method stub
	}
	@Override
	public void methodC() {
		// TODO Auto-generated method stub
	}
	@Override
	public void methodA() {
		// TODO Auto-generated method stub
	}
	@Override
	public void methodD() {
		// TODO Auto-generated method stub
	}
}

*/