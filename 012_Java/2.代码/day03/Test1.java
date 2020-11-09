package com.hqyj.Test.day03;

public class Test1 {
	
	/*
	 * StringBuffer :频繁修改的用StringBuffer
	 */
	public static void main(String[] args) {
/*		//自动扩容  默认是16   .  字符串.lenth+16
		StringBuffer  s = new StringBuffer("zxcvb");
		//int i = s.capacity();
		//System.out.println(i);
		s.append("zxcvasd");
		//指定删除的范围，包含头不包含尾。
		s.delete(0, 2);
		int i = s.length();
		s.setLength(0);
		System.out.println(s);*/
	}
	
	/*
	 * String 不频繁修改的用String
	 */
	public static void main2(String[] args) {
		/*String s = "123";
		String ss = "123";
		System.out.println(s.equals(ss));
		System.out.println(s==ss);
		String s1 = new String("123");
		String s2 = new String("123");
		System.out.println(s1==s2);
		System.out.println(s1.equals(s2));
		
		//查询字符所在位置，没有返回-1
		System.out.println(s.indexOf("1"));
		String name = "Zhouming@qq.com";
		int a  =0;
		int b = 0;
		if (( a =name.indexOf("@")) != -1  && (b = name.indexOf(".")) != -1)  {
			System.out.println("邮箱正确");
		}else{
			System.out.println("邮箱地址错误");
		}
		*/
		String s = "      Hell o     ";
		String s1 = "how are you?";
		//从左往右找第一次出现的位置
		//System.out.println("index of l = " + s.indexOf('l'));
		//最后一次出现的位置
		//System.out.println("last index of l = " + s.lastIndexOf('l'));
		//从指定位置寻找
		//System.out.println("index of('o', 3) = " + s.indexOf('o', 3));
		//截取一个字符串，返回新字符串，指定截取位置，包含头不包含尾。
		//System.out.println(s.substring(0, 4));
		//在后面追加字符串
		//System.out.println(s.concat(s1));
		//讲指定字符替换
		//System.out.println(s.replace(' ', ','));
		//去除字符串前后的空格，字符串中的空格不能清除。
		//System.out.println(s.trim());
		
		
	}
	/*
	 * Math  数学运算类。
	 */
	public static void main1(String[] args) {
		
		double d = (Math.random()*10+1);
		int a = (int)d;
		System.out.println(a);
	}
}
