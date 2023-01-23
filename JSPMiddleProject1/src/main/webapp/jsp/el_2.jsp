<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
     EL => 연산자 (자바가 아니다)
     1) 산술연산자 
       + : 순수하게 산술만 가능(문자열 결합(X))=> +=
       - : 
       *
       / : 정수/정수=실수   div
       ${10/5} = 2
       ${10 div 5}
       ${10 div 3} = 3.3333...
       
       % : 나머지    mod
       ${10 % 3}
       ${10 mod 3}
       
       ${10+10} => 20
       ${"10"+10} => 20 => 자동 변환이 된다       
       ${"10 "+10} => 오류      
       ${null+10} => 10 (null값은 0으로 인식)    
     2) 비교연산자
     3) 논리연산자
     4) 삼항연산자
     5) empty연산자
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL 연산자 (산술연산자)</h1>
<%--
&#36;{10+10}=${10+10}<br>
&#36;{"10"+10}=${"10"+10 }<br>
&#36;{null+100}=${null+100 }<br>
&#36;{"hello"+="el"}=${"hello"+="el"}
&#36;{10-5}=${10-5 }<br>
&#36;{"10"-5}=${"10"-5 }<br>
&#36;{"10"*5}=${"10"*5 }<br>
&#36;{10/3}=${10/3 }<br>
&#36;{10 div 3}=${10 div 3 }<br>
&#36;{10 % 3}=${10 % 3 }<br>
&#36;{10 mod 3}=${10 mod 3 }<br> --%>
<h1>비교연산자(결과:true,false:조건문 사용시)</h1>
<h1>비교연산자 종류(==(eq),!=(ne), <(it) , > (gt), <=(le) , >=(ge))</h1>
<h1>비교연산자의 주의점 : 문자열 , 날짜 , 숫자가 동일하다</h1>
<h1>"hong"=="hong"</h1>
<%-- &#36;{10==10}=${10==10}<br>
&#36;{10 eq 10}=${10 eq 10}<br>
&#36;{"hong"=="hong"}=${"hong"=="hong"}<br>
&#36;{"hong" eq "hong"}=${"hong" eq "hong"}<br> --%>
<h1>논리 연산자 (&&(직렬),||(병렬))</h1>
<%--  $#36;{(10==10)&&(10!=10)}=${(10==10)and(10!=10) }<br>
$#36;{(10==10)||(10!=10)}=${(10==10)or(10!=10) }<br>
$#36;{(10==10)&&(10!=10)}=${(10==10) and not(10!=10) }<br> --%>
<h1>삼항연산자 (조건?값1:값2)=of~else => 조건이 true:값1,false:값2 => 페이지 변경</h1>
<%--&#36;{(10==10)?'A':'B'}=${(10==10)?'A':'B'}
page=${curepage>1?curepage-1:curepage } --%>
<h1>Empty연산자 : true/false</h1>
<%
  request.setAttribute("name", "");
%>
&#36;{empty name}=${empty name }<br>
${name=="" }
</body>
</html>