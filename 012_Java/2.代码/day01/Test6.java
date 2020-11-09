package com.hqyj.Test.day01;
/*
 * 重载:方法的重复载入
 * 定义:在同一个类中，方法名称相同，参数列表不同(类型不同，顺序不同，个数不同)，与返回值无关。
 * 		
 */

public class Test6{

	public static void main(String[] args) {
		String a  =div(10,"张三");
		System.out.println(a);
	}
	public static int div(int a,int b){
		return a+b;
	}
	public static int div(int a,int b,int c){
		return div(a,b)+c;
	}
	public static String div(int a, String c){
		return a+c;
	}
	
}
