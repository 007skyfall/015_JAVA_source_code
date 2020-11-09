package com.hqyj.Test.day02;
/*
 * 异常:  ArithmeticException: / by zero
 * 
 * 
 * 严重的  Error : 内存溢出异常，虚拟机崩溃等。不需要程序员来处理。
 * 非严重  Exception :  ArithmeicException ;需要程序员处理的。
 * 				运行时异常:编译时期不用处理。RuntimeException子类  都是运行时异常。
 * 				非运行时异常:在编译时期 会提示必须处理可能发生的异常。不处理，编译不能通过
 * 发生异常时  如何处理呢？
 * 固定格式:
 * try{
 * 	可能存在异常的代码。
 * }catch(异常类型  e){
 * 捕获异常对象，并在发生异常时，执行此代码块中的代码。
 * }finally{
 * 	一定执行的代码 用于关闭资源，数据库，连接池，等等。
 * }
 * 
 */
import java.io.FileInputStream;
import java.io.FileNotFoundException;
public class Test10 {
	public static void main(String[] args) throws FileNotFoundException {
		//FileInputStream f = new FileInputStream("C////");
		/*int i = div(10,0);
		System.out.println(i);*/
		/*int [] arr = new int [5];
		System.out.println(arr[10]);*/
		/*byte [] b = new byte[1024*1024*1500];*/
		try{
			
			int i = div(10,1);
			System.out.println(i);
			
		}catch(ArithmeticException e){
			e.printStackTrace();
			System.out.println("除数为啦");
		}finally{
			System.out.println("一定执行的代码");
		}
		
		System.out.println("其它代码");
	}
	
	static int  div(int a,int b){
		//FileInputStream f = new FileInputStream("C////");
		return a/b;
	}
}


