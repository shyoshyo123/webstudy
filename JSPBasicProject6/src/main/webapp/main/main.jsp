<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.change.*"%>
    <%--
      jsp => 자바 코딩 영역 
      1) <% %> : 스크립트싯 = 자바 일반 코딩 (제어문, 메서드 호출, 변수 선언)
          MVC,Spring => 일반 자바파일로 변경
      2) <%=%> : 표현식 = 뱐수나 메서드의 리턴값을 출력
          MVC,Spring => ${} 
      3) 제어문
      <%
       for()
        {
        %>
        <%
        }
      %>
      => 제어문 => JSTL
       <c:forEach>
       출력
       </ c:forEach>
       
       <%
         if()
         {
         %>
         <%
         }
        
       %> 
      => <c:if>
         출력
         </c:if>
         -------------------------------------------------HTML에서 제어문을 사용 (ThymeLeaf)
    ==> 지시자 (선언)
      <%@ %> : 정보, 라이브러리 로딩 
      ***page
         contentType="text/html'chasrset=UYF-8"
         errorPage=""
         isErrorPage=""
         import=""
      ***tablib
         prefix="c" => <c:~>
         uri=""
      include => 액션태그로 대체 <jsp:include>
   ==> 내부객체
     request
     response
     session
     application
     out
     pageContext
     ----------- MVC Spring
     exception
     config
     page
     -----------사용빈도가 거의 없음 
   ==> 액션태그
   <jsp:include> : jsp안에 특정부분에 다른 jsp를 포함해서 사용
   <jsp:useBean> : 자바객체 생성
   <jsp:setProperty> : 자바객체에 seXXX메소드를 호출해서 데이터값을 입력
   ==> 자바빈 : ~VO, ~DTO ,~Bean(jsp) => 데이터 모아서 전송할 목적
             ----------(변수 : private , 메서드 : public)
                        ------------- 읽기,쓰기 => 읽기 :getter , 쓰기 : setter
             캡슐화 방식을 이용한다
   ==> 데이터베이스 / JDBC => DBCP(1차 프로젝트)=> 접속속도가 빠르게 접근(미리 Connection을 만든다)
       --------------- getConnection() , 보안 => 일반화 (모든 개발업체에서 사용이 된다) => MaBatis
       -------------------------------------- 일반 JSP (Model1방식 => 사이트 개발용 아니고 홈페이지) : 2000~2003
       
      
         
     --%>
     <% 
     // 화면 변경에 대한 요청값을 받는다
      request.setCharacterEncoding("UTF-8");
      String mode=request.getParameter("mode");
     // 처음에 한번은 default 지정
     if(mode==null)
    	 mode="0";
      String jsp=JspChange.change(Integer.parseInt(mode));
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
  .container{
  margin-top:100px;
  }
  .row{
  width: 960px;
  margin: 0px auto;
  }
  </style>
</head>
<body>
  <%--메뉴 : include (pageContext)  : <jsp:includ> --%>
  <jsp:include page="header.jsp"></jsp:include>
  <div class="container">
   <%--  --%>
   <jsp:include page="<%=jsp %>"></jsp:include>
  </div>
</body>
</html>