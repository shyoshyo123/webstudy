<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
       = 자바 스크립트 역할
         브라우저에서 이벤트 기능 처리 (동적) : HTML(동적)=> 동적 변경
         ----------------------------------------------
         1. 브라우저에서 처리 : 자바스크립트
         2. 브라우저에서 출력 : html/css
         3. 데이터 관리 : 자바
            자바스크립트 오라클 연결(x) => 서버 사이드
            
       = 브라우저안에서 자바에서 전송된 데이터를 받아서 동적으로 변환  
                   ---------
       = 사용법
         1) 내부 스크립트
         <head>
           <script>
            처리
            </script>
         </head> 
         2) 외부 스크립트 (여러개 파일에서 사용이 가능)=> 라이브러리
            .js(확장자)
             원격 <script src="원격(url)">(o)=>import
             내부 <script src="경로명">
         3) 인라인 스크립트 (한개의 태그에서만 제어)
         버전 (ES6)
          ES5 : var(변수=>자동 지정 변수) var i=10; ==> i: number , var i="aaa" ===> i:String
                => 단점 : 스코프가 명화가지 않다
                         ----
                         사용범위
                        
          ES6 : let => 블록 종료하면 사라진다
                const => 상수형 변수 => final
                람다식 (화살표 함수)
                function display(){}
                let function display(){}
                let display=()=>{} =>는 function을 제거, return을 제거
                ------------------
                같다(===), 같지 않다(!==)
                생략이 가능 ;
                
         출력 (System.out.println())
         ---------------------------
         1. alert()=>model
         2. console.log() : 디버깅
         3. document.write() : 브라우저 화면에 출력
         4. 태그.innerHTML="" => Ajax,VueJS,ReactJS 
         -------------------------------------------문자열(비교연산자)
        
        =>자바스크립트 문법
         1) 변수선언(변수의 데이터형이 없다) => 값에 따라 자동으로 데이터형을 변경    
            let i=10;
                --변수
                  => 식별자
                     키워드는 사용할 수 없다 (if,let...)
                     특수문자는 사용 가능 (_,$)
                     숫자로 시작할 수 없다
                     공백이 있으면 안된다
                     대소문자를 구별한다
                     문자 길이는 상관이 없다
                  => 규칙 (문법 사항은 아니다)
                     생성자는 대문자
                     변수, 메소드,함수 => 소문자
                     단어가 여러개인 경우 => 시작 대문자 , _             
        2) 데이터형 
           let i=10  ====> i:int
           let i=10.5 ====>i:double
           ----------------------------- i: Number ==>'10' => Number('10'),parseInt('10')
           let i='A' ===> i:char
           let i='A' ===> i:string
           ----------------------------- i:string ==>String(10) =>"10"
           let i=true ===> i:boolean
           ----------------------------- Boolean(1) => true, Boolean(0) => false : 연산처리가 되면 숫자로 가능
           let i={} ==> 객체 => i:object
                 {name:'홍길동',age:30}
                 ------      -----
                   |          |
                   ------------
                      |
                      멤버변수
                      i.name , i.age
           let i=[] ==> 배열 ==> i:Array
           let i=function(){} ==> i:function
           --------------------------------------
           1) main함수 => 시작과 동시에 자동 호출이 되는 함수
              = 일반 자바스크립트
              window.onload=function()
              {
              
              }
              = Jquery
                $(function(){
                
                })   
             = VueJS
               mounted(){}
             =ReactJS
             componentDidMount(){} =>15이전
             => Hooks => 18버전
                Effect()
              -------------------------------- MVC   
                 
                        
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
//한줄 주석
/*
 * 여러줄 주석
 */
 window.onload=function(){
	let a=10;
	let b=10.5;
	let c='ABC';
	let d="ABC";
	let e=[1,2,3,4,5,"홍길동"];
	let f={name:"홍길동",sex:"남자",age:20};
	console.log("a="+a)
	console.log("b="+b)
	console.log("c="+c)
	console.log("d="+d)
	console.log("e="+e)
	console.log("f="+f)
	document.write("a="+a+"<br>")
	document.write("b="+b+"<br>")
	document.write("c="+c+"<br>")
	document.write("d="+d+"<br>")
	document.write("e="+e+"<br>")
	document.write("f="+f+"<br>")
	document.write("<br>")
	/*
	   자바스크립트에서 지ㅜㅇ너하는 데이터형
	   1. number : 정수,실수 (숫자형)
	   2. string : 문자('') ,문자열("")
	               -------여러문자 취급이 가능'ABC'
	   3. object : 배열[],객체{}
	   4. boolean : true/false
	   5. null : 값이 없는 경우
	   6. undefined : 선언이 안된 경우
	   ==> 데이터 확인 : typeof
    */
    document.write("a"+typeof a+"<br>" )
	document.write("b="+typeof b+"<br>")
	document.write("c="+typeof c+"<br>")
	document.write("d="+typeof d+"<br>")
	document.write("e="+typeof e+"<br>")
	document.write("f="+typeof f+"<br>")
	let i
	document.write("i="+typeof i+"<br>")
	document.write("j="+typeof j+"<br>")
	let k='';
    document.write("k="+typeof k+"<br>")
    
    let o=10;
    document.write("o="+typeof o+"<br>")
    o='ABC';
    document.write("o="+typeof o+"<br>")
    o={name:"홍길동"}
    document.write("o="+typeof o+"<br>")
    }
</script>
</head>
<body>

</body>
</html>

















