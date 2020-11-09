package com.hqyj.Test.day01;
/*
 * 可变参数:
 * 参数类型确定，参数个数不确定的时候用可变参数  ,方法会以数组来接收数据。
 * 
 */

public class Test9 {
	
	public static void main(String[] args) {
	int a =	div(10,12,40,50);
	System.out.println(a);
	}
	public static int div(int...is){
		int a = 0;
		for (int i = 0; i < is.length; i++) {
			a +=is[i];
		}
		return a;
	}
}
