package com.hqyj.Test.day03;

import java.util.Arrays;

import javax.swing.plaf.SliderUI;
/*
 * 线程创建的第二种方式Runnable
 */

public class Test4 {
	public static void main(String[] args) {
		MyThread2 m = new MyThread2();
		Thread t = new Thread(m);
		Thread t1 = new Thread(m);
		Thread t2 = new Thread(m);
		Thread t3 = new Thread(m);
		t.start();
		t1.start();
		t2.start();
		t3.start();
	}
}
 class MyThread2 implements Runnable{
	 int a = 100;
	@Override
	public void run() {
	while(a>0){
		try {
			Thread.currentThread().sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(Thread.currentThread().getName()+"出售了第"+a--+"张票");
	}
	}
 }
