package com.hqyj.Test.day03;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/*
 * 泛型<>:定义集合容器的存放规范:       集合类型 <泛型>   变量名称  =  new 集合类型<泛型>();
 * 集合:           Collection|--  
 * 								 set---: 不可重复，无序。   
 * 										|----HashSet  按照hash表位置存储。
 * 								List---:可重复，有序。     
 * 										|----ArrayList  底层就是数组。
 * 
 */


public class Test2 {
	/*
	 * 增强for循环
	 */
	public static void main(String[] args) {
		int [] a = {1,2,4,6,5,79};
		for (int i = 0; i < a.length; i++) {
			a[i]=200;
			System.out.println(a[i]);
		}
		for (int i : a) {
			System.out.println(i);
		}
	}
	
	
	/*
	 * HashMap<k,v>  存储特点以键值对形式存储，键不可重复，值可重复。
	 */
	public static void main4(String[] args) {
		HashMap<String,String>  hs  = new HashMap<String,String>();
		hs.put("01","张三");
		hs.put("02","张三");
		hs.put("03","张三");
		hs.put("03","张三");
		//hs.remove("03");
		//System.out.println(hs.get("03"));
		/*
		 * 分部写
		 */
		Set<String> keySet = hs.keySet();//获取集合当中所有键，返回set集合
		Iterator<String> iterator = keySet.iterator();//set集合当中有迭代器；
		while(iterator.hasNext()){//查询set集合当中是否还有元素
			System.out.println(iterator.next());//将set集合当中的元素遍历。
		}
		//整合写
		 Iterator<String> i = hs.keySet().iterator();
		 while(i.hasNext()){
			 System.out.println(hs.get(i.next()));
		 }
		 
	
	}
	/*
	 * set 不可重复，无序的。如果放自定义类型的对象，比较对象具体的值是否重复要重写hashCode  和 equals方法
	 */
	public static void main3(String[] args) {
		HashSet<Student>   h = new HashSet<Student>();
		h.add(new Student("张三"));
		h.add(new Student("张三1"));
		h.add(new Student("张三2"));
		h.add(new Student("张三"));
		
		Iterator<Student> i = h.iterator();
		while(i.hasNext()){
			Student s = i.next();
			System.out.println(s.name);
		}
		/*h.add("张三1");
		h.add("张三1");
		h.add("张三2");
		h.add("张三3");
		h.add("张三4");*/
		//System.out.println(h);
		
		
		
	}

	public static void main1(String[] args) {
		/*
		 * 有顺序的，可重复；
		 * 删除元素时，所有元素向前移动，导致效率低。
		 */
		ArrayList<String>  a = new ArrayList<String>();
		a.add("1");
		a.add("2");
		a.add("4");
		a.add("5");
		a.remove(2);//删除指定下标元素
		a.clear();//清除所有元素
		a.size();//获取容器中元素个数
		a.indexOf("5");//查询容器中该元素从左往右第一次出现的位置
		a.lastIndexOf("");//查询元素最后一次出现的位置。
		Iterator<String> iterator = a.iterator();//获取迭代器
		iterator.hasNext();//判断容器中是否还有元素。从0开始，有true,没有false
		iterator.next();//获取容器中的元素，返回当前元素类型。
		Object[] array = a.toArray();//将容器中的元素装入数组当中。
		System.out.println(a.get(2));
		Iterator<String> i = a.iterator();
		//boolean b = i.hasNext();
		//String string = i.next();
		while(i.hasNext()){
			System.out.print(i.next());
		}
	}
}
class Student{
	String name;
	Student(String name){
		this.name = name;
	}
	@Override
	public int hashCode() {
		System.out.println(this.name+"hashCode.....");
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return 10;
	}
	@Override
	public boolean equals(Object obj) {
		System.out.println(this.name+"equals.....");
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