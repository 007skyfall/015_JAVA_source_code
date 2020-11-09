package com.hqyj.Test.day02;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

/*
 * 多重catch:
 * 调用一个方法有多个异常
 */

public class Test11 {

	public static void main(String[] args) {
		
		try {
			div(10,0);
		} catch (FileNotFoundException e) {
			System.out.println("文件找不到");
		} catch (ArithmeticException e) {
			System.out.println("被除0啦");
		}
		System.out.println("其它代码");
	}
	static int div(int a , int b) throws FileNotFoundException,ArithmeticException
	{
		//FileInputStream f = new FileInputStream("C////");
		return a/b;
	}
}
