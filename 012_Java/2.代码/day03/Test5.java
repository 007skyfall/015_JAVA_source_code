package com.hqyj.Test.day03;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilterWriter;
import java.io.IOException;

/*
 * IO:
 * 
 * 
 * 字符流 ：读取文本文件。
 * 					Reader:读取字符
 * 					writer:写字符
 * 
 * 字节流:读取多媒体文件
 * 					InputStream:读取字节流
 * 					OutPutStream:写字节流；
 */

public class Test5 {
	/*
	 * 复制多媒体文件
	 */
	public static void main7(String[] args) throws IOException {
		//源文件地址
		BufferedInputStream bi = new BufferedInputStream(new FileInputStream("c:\\666.jpg"));
		//复制地址
		BufferedOutputStream bo = new BufferedOutputStream(new FileOutputStream("c:\\888.jpg"));
		int len = 0;
		while((len=bi.read()) != -1){
			bo.write(len);//读取的数据写到制定地点  得到的数字转换成byte字节 放入字节数组
		}
		bi.close();
		bo.close();
		
	}
	
	
	/*
	 * BufferedReader
	 * BufferedWriter
	 */
	
	public static void main(String[] args) throws IOException {
		BufferedReader bf = null;
		BufferedWriter  bw  = null;
		FileReader  r = null;
		FileWriter w = null;
		try{
			  r = new FileReader("c:\\Test.java");
			 w  = new FileWriter("c:\\Test_cp2.java");
			 bf = new BufferedReader(r);
			  bw = new BufferedWriter(w);
			  String line = null;
			  while((line = bf.readLine()) != null){
				  bw.write(line);
				  bw.newLine();
			  }
		}catch(IOException e){
			System.out.println("IO异常");
		}finally{
			try {
				if (bf!= null) {
					bf.close();
				}else if(bw != null){
					bw.close();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	/*
	 * 复制文本文件。
	 */
	public static void main3(String[] args) throws IOException {
		FileReader  r = new FileReader("c:\\Test.java");
		FileWriter w  = new FileWriter("c:\\Test_cp.java");
		char [] c = new char[1024];
		while(r.ready()){
			int i = r.read(c);
			w.write(c, 0, i);
			//w.write((char)r.read());
		}
		r.close();
		w.close();
	}
	/*
	 * 读取文本文件
	 */
	public static void main2(String[] args) throws IOException {
		FileReader  f = new FileReader("c:\\Test.java");
		while(f.ready()){
			int i = f.read();
			System.out.print((char)i);
		}
	}
	
	/*
	 * 创建文本文件，并写入字符
	 */
	public static void main1(String[] args) throws IOException {
		FileWriter f  = new FileWriter("c:\\Test.java",true);
		//f.append("sdasdasdasdas");
		f.append("撒大声地撒大所");
		f.flush();
		f.close();
	}

}
