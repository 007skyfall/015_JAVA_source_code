package com.hqyj.Test.day02;
/*
 * 内部类:
 * 格式:
 * 
 * 		class  Wai{
 * 
 * 
 * 			class  Nei{
 * 
 * 			}
 * 
 * }
 */
public class Test8 {
	public static void main(String[] args) {
		Wai w = new Wai();
		//Wai.Nei n = new Wai().new Nei();
		//n.show();
		Wai.Inner  i = new Wai.Inner();
	}
}
class Wai{
	int a =12;
	abstract class  Nei{
		int a = 10;
		void show(){
			int a = 13;
			//method();
			System.out.println("内部类方法"+Wai.this.a);
		}
		abstract void method();
	}
	class Nei2 extends Nei{
		@Override
		void method() {
			// TODO Auto-generated method stub
		}
	}
	void method(){
		//show();
		System.out.println("外部类方法");
	}
	static class Inner{
		
	}
}
