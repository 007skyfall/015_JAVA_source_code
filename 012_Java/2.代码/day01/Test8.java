package com.hqyj.Test.day01;

/*
 * 包装类
 */

public class Test8 {
	
	public static void main(String[] args) {
	
		
		
	/*	//把字符串类变成int 类型
		String s ="123";
		int a  = Integer.parseInt(s);
		System.out.println(a+1);
		
		//把int 类型转换整String类型
		String  ss = Integer.toString(a);
		System.out.println(ss);
			*/
	/*	
		Integer i = new Integer(20);
		Integer ii = 20;//自动装箱  new Integer(20);
		int a  = 10;
		int b = a+ii;//自动拆箱。intValue()
*/		
	/*	Integer i = 127;
		Integer ii = 127;
		System.out.println(ii.equals(i));
		Integer b = 128;
		Integer bb = 128;
		System.out.println(b.equals(bb));*/
		
		/*Student s = new Student();
		Student s1 = new Student();
		s.name="张三";
		s1.name="张三";
		System.out.println(s.equals(s1));*/
		
	}
}

/*
 * ==和 equals 
 * 都是用于比较，  基本数据类型比较的是具体的值，比较引用数据类型，比较的是地址值。
 * equals方法就是用==来实现的。
 * equals是方法可以被重写，重写之后的对象比较的就是具体的值.
 */
class Student{
	String name;

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Student other = (Student) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}
	
	
}





