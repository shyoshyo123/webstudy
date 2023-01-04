package com.sist.service;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.*;
import java.util.StringTokenizer;
//Document => html문서가 저장된다
public class HTMLParser {
   public void htmlGetData()
   {
	    try {
	    	/*
	    	 *   connect()=> URL
	    	 *   parse()=> File
	    	 *   ------------------open Api
//	    	 */
	    	Document doc=Jsoup.parse(new File("C:\\webDev\\webstudy\\HTMLCSSProject2\\src\\main\\webapp\\css\\css_2.html"));
//	    	System.out.println(doc.toString());
//	    	Elements h1=doc.select("div.b h1"); //Elements목록 여러개  Element상세보기
//	    	System.out.println(h1.toString());		
//	    	System.out.println(h1.size());
//	    	for(int i=0;i<h1.size();i++)
//	    	{
//	    		System.out.println(h1.get(i).text());
//	    	}
	    	Element name=doc.select("div.a h1").get(2);
	        System.out.println(name.text());
	    }catch(Exception e) {}
   }
   public void foodDetailData()
   {
	   try {
		   Document doc=Jsoup.parse(new File("C:\\webDev\\webstudy\\HTMLCSSProject2\\src\\main\\webapp\\css\\css_3.html"));
		   //System.out.println(doc.toString());
		   Elements detail=doc.select("table.info tbody tr th");
		   String address="",tel="",type="",price="",parking="",time="",menu="";
		   for(int i=0;i<detail.size();i++)
		   {
			   //System.out.println(detail.get(i).text());
			   String label=detail.get(i).text();
			   if(label.equals("주소"))
			   {
				   Element a=doc.select("table.info tbody tr td").get(i);
				   address=a.text();
			   }
			   else if(label.equals("전화번호"))
			   {
				   Element a=doc.select("table.info tbody tr td").get(i);
				   tel=a.text();
			   }
			   else  if(label.equals("음식 종류"))
			   {
				   Element a=doc.select("table.info tbody tr td").get(i);
				   type=a.text();
			   }
			   else if(label.equals("가격대"))
			   {
				   Element a=doc.select("table.info tbody tr td").get(i);
				   price=a.text();
			   }
			   else  if(label.equals("주차"))
			   {
				   Element a=doc.select("table.info tbody tr td").get(i);
				   parking=a.text();
			   }
			   else   if(label.equals("영업시간"))
			   {
				   Element a=doc.select("table.info tbody tr td").get(i);
				  time=a.text();
			   }
			   else  if(label.equals("메뉴"))
			   {
				   Element a=doc.select("table.info tbody tr td").get(i);
				  menu= a.text();
			   }
			   String addr1=address.substring(0,address.indexOf("지"));
			   String addr2=address.substring(address.indexOf("지")+3);
			   
			   System.out.println("주소:"+addr1);
			   System.out.println("지번:"+addr2);
			   
			   System.out.println("전화:"+tel);
			   System.out.println("음식종류:"+type);
			   System.out.println("가격대:"+price);
			   System.out.println("시간:"+time);
			   System.out.println("주차:"+parking);
			   StringTokenizer st=new StringTokenizer(menu,"원");
			   while(st.hasMoreTokens())
			   {
				   System.out.println(st.nextToken()+"원");
			   }
			   
		   }
	   }catch(Exception e) {}
   }
   //속성값 읽기 <img src="이미지명"> doc.select("-- img") ==> attr("src")
   public void foodAttributeData()
   {
	   try{
		   Document doc=Jsoup.parse(new File("C:\\webDev\\webstudy\\HTMLCSSProject2\\src\\main\\webapp\\css\\css_4.html"));
		   Elements image=doc.select("div.list-photo_wrap img.center-croping");
		   System.out.println(image.toString());
		   for(int i=0;i<image.size();i++)
		   {
			   System.out.println(image.get(i).attr("src"));
		   }
	   } catch(Exception e) {}
   }
   //html 읽기
   /*
    *  <div class="a">
    *    <span>Hello</span>
    *    <span>
    *        <p>HTML/CSS</p>
    *    </span>    
    *  
    */
   public void htmlData()
   {
	   try
	   {
		   Document doc=Jsoup.parse(new File("C:\\webDev\\webstudy\\HTMLCSSProject2\\src\\main\\webapp\\css\\css_5.html"));
		   Element div=doc.selectFirst("div.a");
		   System.out.println(div.text());
		   System.out.println(div.html());
	   }catch(Exception e) {}
   }
	public static void main(String[] args) {
		// TODO Auto-generated method stub
      HTMLParser hp=new HTMLParser();
      hp.foodDetailData();
     // hp.foodAttributeData();
      //hp.htmlData();
	}

}
