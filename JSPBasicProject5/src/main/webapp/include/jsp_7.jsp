<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%--
   jsp (우ㅐㅂ=> 서버 프로그램:_jspService()안에 소스 코딩을 한다)
   -------------------------------------------------
   jsp 구동
   1) webServer가 url 주소를 받는다 ==> 마지막에 파일명이 존재(필요시에 의해서 변경)
      ------------------------
        1-1) .html , .xml일 경우에는 브라우저로 바로 전송
        1-2) .jsp일 경우엔 was(web Application Server)로 전송
                 |      ---------------------------톰캣 , 레진 .. 제우스...
                a.jsp ===> a_jsp.java===>a.jsp.class==>메모리에 html만 출력(출력된 내용만 브라우저에서 읽어서 화면에 출력)
                       변환            컴파일           실행 ---------------
                                                              | 출력버퍼 (관리 클래스 out)=> buffer="8kb"
   2) jsp에 대한 정보
           | 지시자
      <%@page 변한코드 에러시 출력할 파일 지정 라이브러리 출력버퍼크기> 
              ----- ---------------  ------  -------
                                               | buffer="16kb"
                                       | import=",,"
                          | errorPage="파일명"             
                | contentType="text/html'charset=UTF-8","text/xml;charset=UTF-8","text/plain;charset=UTF-8"
          ** 지시자안에 모든 속성은 지정이 되어 있다  
          속성="값" 속성="값"==> 한번만 사용이가능
          단 import는 여러번 사용이 가능
          예) <%@page import="java.util.*,java.io.*"
                page import="java.util.*"
                page import="java.io.*"
   3) jsp => 자바+html(css,javaScript)
             자바와 html을 구분
             -----
            <%스크립트릿 : 일반자바(메서드안에)=> 지역변수 , 메서드 호출, 제어문, 연산자%>   
            <%= 표현식%>    
   4)내장객체
   ***= request
        클래스 확인 : HttpServletRequest
        = 역할
         1. 브라우저 정보/ 서버 정보
         2. 사용자 요청 데이터 관리
         = getParameter
         = getParameterValues()
         = setCharacterEncoding()
         3. 추가 정보
            = setAttribute() : 추가
            = setAttribute() : 읽기
         = 주요 메서드
   ***= response
   ***= session
   =out
   =pageContext
   =application
   
   5)jsp액션태그    
   = <jsp:include> : tiles 
   = <jsp:useBean>
   = <jsp:setProperty>        
 --%>
%>