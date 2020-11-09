/*package com.hqyj.Test.day02;

 * 多态:面向对象的三大特征  封装、继承、多态、
 * 
 * PersonAA s = StudentAA();子类对象伪装成父类对象。对象的向上转型。为了提高功能的扩展性。
 
public class Test5 {
	public static void main(String[] args) {
		StudentAA s = new StudentAA();
		Wo w = new Wo();
		//PersonAA  p = new StudentAA();//对象伪装成父类  向上转型
		//StudentAA s = (StudentAA)p;  //对象向下转型  变成本来的对象。
			method(w);
	}
	static void method(PersonAA s){//  PersonAA  p = new StudentAA();//对象伪装成父类  向上转型
		if (s instanceof StudentAA) {
			StudentAA stu = (StudentAA)s;
			stu.method();
		}else if(s instanceof Wo)
		{
			Wo w = (Wo)s;
			w.method();
		}
		s.show();
	}
}
class PersonAA{
	String name;
	int age;
	void show(){
		System.out.println("父类方法");
	}
}
class StudentAA extends PersonAA{
	void show(){
		System.out.println("子类的方法");
	}
	void method(){
		System.out.println("子类特有方法");
	}
}
class Wo extends PersonAA{
	void show(){
		System.out.println("WO子类的方法");
	}
	void method(){
		System.out.println("wo特有方法子类特有方法");
	}
	
}
*/