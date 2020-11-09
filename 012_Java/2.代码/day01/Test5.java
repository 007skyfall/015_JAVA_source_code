package com.hqyj.Test.day01;
/*
 * 继承:
 * 格式:  A类（子类）  extends  B类(父类 ){
 * }
 * 好处  提高代码的复用性。 子类对象可以调用父类当中的属性和方法，也可以自己定义特有方法。
 * 注意java当中只支持单继承。
 * 覆盖:
 * 		覆盖发生在父子关系当中，子类定义跟父类相同的方法，子类不能比父类的修饰符更严格，子类不能抛出比父类更多的异常。
 * 		
 * super:
 * 			代表父类的引用
 * 			用法:
 * 				super.属性，调用父类的属性
 * 				super.方法,调用父类的方法
 * 				super();调用父类的构造方法，会根据传入的参数调用相应的构造方法。
 * 
 * 
 * 注意:在构造方法中super()只能在第一行，并且不能和this同时出现，否则虚拟机不知道你要如何初始化对象。
 * 	
 * 
 * 
 */

public class Test5 {
	public static void main(String[] args) {
		/*Zi z = new  Zi();*/
		
		
	}
}
/*class Fu{
	String name;
	int age;
	 void show(){
		System.out.println("打电话");
	}
	 Fu(String n,int a){
		 name = n;
		 age =a;
		 System.out.println("父类构造器");
	 }
	 Fu(){
		 System.out.println("父类空参构造方法");
	 }
}
class Zi extends Fu{
	void hah(){
		System.out.println("哈哈");
	}
	void show(){
		super.show();
		System.out.println("显示图片");
	}
	Zi(String n,int a){
		super();
		System.out.println("子类构造器");
	}
	Zi(){
		System.out.println("子类空参构造方法");
	}
}*/

