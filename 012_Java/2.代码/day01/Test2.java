package com.hqyj.Test.day01;

/*
 * 面向对象：
 * 类是对象的模板。
 * 对象有静态特征，和动态特征。
 * 封装:
 * 将复杂数据封装起来，提供简单的访问方法并且约束。
 * 好处，增强数据的安全性。
 * 关键字  private 私有的，作用范围，只能在类中被访问。
 * private修饰属性之后提供set 和 get方法来进行访问。
 * 
 */
public class Test2 {
	//程序入口
	public static void main(String[] args) {
		//Phone p = new Phone();
		Phone p = new Phone();
		//
		p.setName("哈哈");
		p.show();
	}
}
class Phone{
	//全局变量--对象的静态特征
	private String name;
	//方法---对象的动态特征
	void show(){
		System.out.println(name+"打电话");
	}
	Phone(){
	}
	Phone(String n){
		name=n;
	}
	public void setName(String name) {
		if (name.equals("华为")) {
			this.name = name;
		}else{
			System.out.println("输入参数错误");
		}
	}
	
}

