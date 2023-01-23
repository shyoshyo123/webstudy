<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
        EL => <%= %>을 대체 (화면에 데이터 출력): 표현식
        -- Spring, 실무
        자바 제어문 : => jstl
        -------------------자바를 최소화
        1) 복잡 (htmㅣ/자바)
        2) 프론트,백 -> 공동 작업이 가능하게 만든다
        ------------------------------------------
        1. 내장 객체 (523p)
           1) requestScope : request.getAttribute()
           2) sessionScope : session.getAttribute()
           3) param : request.getParameter()
           => 사용방식
            <%= %> ==> S{}
            <%
              Stirng name="홍길동";
              request.getAttribute("name",name)
                                         ------- key
            %>
            ${requestScope.name}
                           ----key
             --------------생략가능 ${name}
                           
        2. 연산자
        
    --%>
    <% 
      String name="홍길동";
    //${}를 이용해서 출력
      request.setAttribute("name","심청이");
      session.setAttribute("name1","제니");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>일반 변수일떄 출력</h1><br>
이름 : <%=name %>
<h1>el을 이용</h1>
이름 : ${requestScope.name}
<br>
이름 : ${name }
<br>
<h1>session 에 저장된 데이터 읽기</h1>
이름 : ${sessionScope.name1 }<br>
이름 : ${name1 } <%-- request에 저장된 값 --%>
</body>
</html>