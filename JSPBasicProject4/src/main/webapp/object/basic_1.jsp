<!-- 
   171p (내장객체)
   1) 내부 객체
   => 미리 객체를 생성한 다음에 사용이 가능
   => 9개
   => jps 파일 => _jspServiec()에 필요한 코딩을 하는 파일
   public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
   {
    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;
    
    // JSP코딩 위치
   }
   
   *** request
   *** reponse
   *** pageContext
   *** session
   *** application
   config
   *** out
   page
   exception
   ---------------- 내장/내부 객체
   
   _jspService()=> 브라우저 화면에 출력
   {
    jsp 파일
   }  
   
    1) 요청관련 데이터 관리 , 사용자 브라우저 정보 , 추가 기능
       request : HttpServletRequest
                 ------------------
       = 기능 
       1. 브라우저 정보 / 서버 정보
          http://localhost:8080/JSPBasicProject4/object/basic__jsp1.jsp => URL
          --------------------- ----------------------------------------
            서버 정보                 사용자 요청 정보(URI)
                                -----------------------
                                  ContextPath
          = ***getRequestURL()
          = ***getRequestURI()
          = ***getContextPath()
          = ***getRemoteAddr() ==> 사용자의 ip (조회수)
          = getServerPort() ==> 80
          = getServerInfo() ==> localhost 
                                 
       2. 요청 관련 정보    
            = 사용자가 보내준 데이터 (단일데이터) : getParameter()
            = 사용자가 보내준 데이터 (다중데이터) : checkbox : getParameterValues()
            = 사용자가 보내준 데이터 Parameter => getParameterNames() 
            = 브라우저 ==> Java(2byte)
                  1byte => 2byte로 변경 (디코딩)
              Java(2byte) ==> 브라우저
                         2byte => 1byte로 변경 (인코딩)
 https://www.google.com/search?q=%EC%9E%90%EB%B0%94&oq=%EC%9E%90%EB%B0%94&aqs=chrome..69i57j69i59l3j69i61j69i60l2.1710j0j15&sourceid=chrome&ie=UTF-8                            
 브라우저로 전송      
 %EC%9E%90%EB%B0%94(자바) => byte[]변경 (인코딩)
 자바 => 한글변환 byte[] => String (디코딩)
 ----------------------------------
 1) byte[] => String (브라우저에서 값을 받을 때): 디코딩
    request.setCharacterEncoding("UTF-8"); ==>POST 방식에서 디코딩
 2) String => byte[] (브라우저로 값을 보낼 때) : 인코딩 
    URLEncoder.encoder(데이터,"UYF-8")=>자바/자바스크립트가 동일
 ------------------------------------------- 처리방식 (GET/POST)
                                                    --- window10(자동처리)=> server.xml
                                                    64 => URIEncoding="UTF-8"
            *** 데이터 전송
                받는 파일명?변수명=값
                ------- ---  --
                        key  value
                a.jsp?no=10
                  => a.jsp
                     request.getParameter("no");
                     a.jsp?id=admin&pwd=1234
                           -------- --------
                           request.getParameter("id"); /// admin
                           request.getParameter("pwd"); /// 1234
                           ***받는 모든 데이터값은 String
                     a.jsp?hobby=a&hobby=b&hobby=c
                           ------------------------
                           String[] request.getParameterValues("hobby")      
     3. 추가기능 => 사용자가 보내준 데이터 + 필요한 데이터를 추가해서 전송(MVC,Spring)
           setAttribute(키,값) ==> Object를 첨부 (ArrayList)
           setAttribute(키)
    = 응답
      response : HttpServletResponse
      -------- JSP 한개에서 1번만 reponse를 할 수 있다
                              ------
                                | 
                             HTML 파일 전송 
                             cookie 전송
                            ------------
     = setHeader(): 파일 업로드 , 다운로드시에 사용
     = sendRedirect() : 서버에서 다른 파일로 이동 / forward()
     ----------------------------------------------------------------------                                                                        
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>