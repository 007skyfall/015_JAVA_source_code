package com.hqyj.Test.day03;
/*
 * 进程：正在进行中的程序
 * 
 * 
 * 
 */

public class Test3 {
	public static void main(String[] args) {
	
		MyThread t = new MyThread();
		t.start();
		for (int i = 0; i < 100; i++) {
			System.out.println("main......"+i);
		}

	}
	
}
class MyThread extends Thread{
	public void run(){
		for (int i = 0; i < 100; i++) {
			System.out.println("run......"+i);
		}	}
}






