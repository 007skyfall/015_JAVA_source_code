package com.hqyj.Test.day01;

import java.util.Arrays;

/*
 * 数组:
 */

public class Test4 {
	public static void main(String[] args) {
		//创建数组
		int [] a = new int [10];
	/*	for (int i = 0; i < 10; i++) {
			a[i]=i+100;
		}
		for (int i = 0; i < 10; i++) {
			System.out.println(a[i]);
		}*/
		//int b [] = new int [10];
		//System.out.println(a.length);
		int [] b ={5,6,7,8,9,4,2,1};
		/*System.out.println("排序前:"+Arrays.toString(b));
		Arrays.sort(b);
		System.out.println("排序后:"+Arrays.toString(b));*/
		int [] c = Arrays.copyOf(b, b.length+1);
		System.out.println(Arrays.toString(c));
	}

}
