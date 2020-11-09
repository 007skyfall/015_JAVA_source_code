package com.hqyj.Test.day02;
/*
 * 利用 抽象类，和多态。
 * 有一个美丽的妻子（class）
 * ，它想听鸟叫(方法)，
 * 你先买了一只鹦鹉（class），
 * 妻子听了以后觉得不好听(测试类)
 * 你又买了一只巴哥。
 */
public class Test7 {
	public static void main(String[] args) {
		Wife w = new Wife();
		YW y= new YW();
		BG  b = new BG();
		w.method(b);
	}
}
class Wife{
	//听鸟叫的方法
	void method(Animal a){
		if(a instanceof YW){
			a.moo();
			System.out.println("不好听");
		}
		if (a instanceof BG) {
			a.moo();
			System.out.println("好听");
		}
	}
}
abstract class Animal{
	abstract void moo();
}
class YW extends Animal{
	@Override
	void moo() {
		System.out.println("鹦鹉叫声····呜呜呜");
	}
}
class BG extends Animal{
	@Override
	void moo() {
		System.out.println("巴哥叫......");
	}
}
