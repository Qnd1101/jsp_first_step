# JSP 첫 걸음

## 웹 페이지 구성 요소
### <%@ 무언가의 내용 %> : 지시 문, JavaScript 페이지 속성 지정
### <%-- 주석 내용 --%> : 주석 문
### <jsp:액션 속성> </jsp:액션 속성> : 액션 태그, <br>다른 페이지 포함(include), 다른 페이지 이동(forward)
### <%  무언가의 내용  %> : 가장 일반적인 형식, <br>스크립트릿, 자바 코드를 묶는 블록, 변수 선언 시 이용, 지역 변수
### <%!  전역 변수, 메서드 선언  %> : 선언 문
### <%=  웹 브라우저에 출력하고자 하는 값  %> : 표현 식

<br>

## jsp 처리 과정
### 1) 클라이언트는 웹 브라우저를 통해 웹 서버에게 웹 페이지 서비스를 요청한다.
### 2) 웹 서버는 jsp 스크립트 페이지인 경우, 웹 컨테이너에게 처리를 부탁한다.
### 3) 웹 컨테이너는 웹 페이지가 서블릿 클래스를 <br>로딩할 경우 클라이언트의 요청을 처리한다.
### 3-1) 만일 서블릿 클래스를 로딩할 수 없는 경우,<br>jsp를 자바코드로 변환 → 자바코드를 컴파일 → 서블릿 클래스를 생성
### 4) 웹 컨테이너는 요청에 대한 서블릿 클래스의 실행 경과를 웹 서버로 전달한다.
### 5) 웹 서버는 웹 컨테이너로부터 전달 받은 웹 페이지(HTML 형식)를 <br>클라이언트에게 전송한다.
![Jsp 프로그램 동작원리](https://github.com/Qnd1101/jsp_first_step/assets/107795830/4d1517d5-2851-4b8c-a930-da01af2d70e0)

<br>

## jsp에서 배열 선언하기
### * 1차원 배열 선언<br> - 데이터 형[ ] 배열 명;<br> - 데이터 형 배열 명[ ];

### * 1차원 배열 생성 <br> - 배열 명 = new 데이터 형[배열 크기];

### * 1차원 배열 선언과 생성을 동시에 <Br> - 데이터 형[ ] 배열 명 = new 데이터 형[배열 크기]; <br>- 데이터 형 배열 명[ ] = new 데이터 형[배열 크기];

### *** 연습 문제 ***
#### 3과목 국, 영, 수 의 점수(90, 80, 70)와 과목명을 각각 1차원 배열로 정의하고 <br> 총점과 평균을 구하는 성적처리 프로그램을 jsp로 구현하시오.
<details>
  <summary>코드</summary>

  [1차원_배열_성적처리_프로그램_코드 URL](https://github.com/Qnd1101/jsp_first_step/blob/main/%EC%84%B1%EC%A0%81%EC%B2%98%EB%A6%AC_%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8.jsp)
  
  ```javascript
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리 프로그램</title>
</head>
<body>
	<h3><1차원 배열을 이용한 성적처리></h3><br>
	<b>
		<%
			int[] score = {90, 80, 70};
			String[] subject = {"국어", "영어", "수학"};
			int sum = 0;
			float avg = 0;
			
			for(int i : score){
				sum += i;
			}
			avg = sum / score.length;
			
			for(int i = 0; i < 3; i++){
				out.print(subject[i] + " : " + score[i] + "<br>");
			}
		%>
		총점 = <%= sum %><br>
		평균 = <%= avg %> <br>
	</b>
</body>
</html>
```
</details>

<br>

## 2차원 배열 생성
### 데이터 형[ ][ ] 배열 명 = new 데이터 형[행 원소 수][열 원소 수];
### 데이터 형 배열 명[ ][ ] = new 데이터 형[행 원소 수][열 원소 수];
### ex) int jumsu[][] = new int[2][3]; <br> int jumsu[][] = {{80,90,70}, {50, 80, 70}};
<table style="border: 2px solid black; border-collapse: collapse; width: 300px;">
  <tr>
    <td style="border: 1px solid black;">80</td>
    <td style="border: 1px solid black;">90</td>
    <td style="border: 1px solid black;">70</td>
  </tr>
  <tr>
    <td style="border: 1px solid black;">50</td>
    <td style="border: 1px solid black;">80</td>
    <td style="border: 1px solid black;">70</td>
  </tr>
</table>


### *** 2차원 배열을 이용한 성적 처리 프로그램 ***
#### 학생 2명(김미영, 김민성)의 국, 영, 수 3과목의 점수를 2차원 배열로 정의하고, <br> 생별 총점과 평균을 구하시오.

<details>
  <summary>코드</summary>

[2차원 배열_성적처리_프로그램_코드 URL](https://github.com/Qnd1101/jsp_first_step/blob/main/2D_Array_grade.jsp)
  
  ```javascript
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2차원 배열을 이용한 성적 처리 프로그램</title>
</head>
<body>
	<%!
		int[][] score = {{80,90,70}, {50, 25, 30}};
		String[] subject = {"국어", "영어", "수학"};
		String[] name = {"김미영", "김민성"};
	%>
	<h2>2차원 배열을 이용한 성적 처리 프로그램</h2>
	<b>
		<%
			int sum = 0;
			float avg = 0;
			
			for(int i = 0;i<score.length;i++){
	            for(int j = 0;j<3;j++){
	                out.print(name[i] +"의 "+ subject[j] +"점수 : " + score[i][j] + "점<br>");
	            }
	            for(int j : score[i]){
	            	sum += j;
	            }
	            avg = sum/score[i].length;
	            
	            out.print(name[i] + "의 총점 : " + sum + "점<br>");
	            out.print(name[i] + "의 평균 : " + avg + "점<br><br>");
	            sum=0;
			}
		%>
	</b>
</body>
</html>
  ```
</details>

<br>

## 조건문을 활용한 연습 문제
### ** 대학에서 학년 별로 영문 호칭을 판정하는 프로그램 **
#### switch case 문으로 구현 하고, 학년 구간을 벗어난 경우에는 <br> ’학년오류‘ 라는 메세지를 출력하시오.
#### 1 → fresh man <br> 2 → sophomore <br> 3 → junior <br> 4 → senior <br> 1~4 이외의 값들은 : 학년오류
#### 출력 내용 : 대학의 N학년은 <영문명>입니다.
<details>
  <summary>코드</summary>

  [대학 학년 영문호칭 코드 URL](https://github.com/Qnd1101/jsp_first_step/blob/main/%EB%8C%80%ED%95%99_%ED%95%99%EB%85%84_%EC%98%81%EB%AC%B8%ED%98%B8%EC%B9%AD.jsp)

  ```javascript
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대학에서 학년 별로 영문 호칭을 판정하는 프로그램</title>
</head>
<body>
<%
	int year = 1;
	String msg = null;
	switch(year){
		case 1 :  msg = "fresh man";
			break;
		case 2 : msg = "sophomore";
			break;
		case 3 : msg = "junior";
			break;
		case 4 : msg = "senior";
			break;
		default : msg = "학년오류";
			break;
	}
%>
<b>대학의 <%= year %>학년은 <%= msg %> 입니다.</b>
</body>
</html>
  ```
</details>

<br>

#### if문을 이용한 회원가입 프로그램 **
<b>
1) 사용자의 아이디가 일치한 후, 비밀번호까지 일치하면 <br>
⇒ 방문을 환영합니다. <br><br>
2) 사용자의 아이디가 일치한 후, 비밀번호까지 일치하지 않으면 <br>
⇒ 비밀번호가 틀립니다. <br><br>
3) 사용자의 아이디가 일치하지 않으면, <br>
⇒ 회원 가입을 해주세요. <br><br>
하는 메시지를 출력하시오. <br>
# 사용자 아이디 “abc” 비밀번호 “1234” <br>
# 로그인 입력 아이디와 비밀번호는 변수로 지정하시오. <br><br>
출력 내용 : 
사용자 ID : <결과>, 사용자 Password : <결과> <br>
로그인 ID : <결과>, 로그인 Password : <결과> <br>
로그인 메시지 : <결과>
</b>
	
<br>

<details>
  <summary>코드</summary>

[로그인_확인_프로그램 코드 URL](https://github.com/Qnd1101/jsp_first_step/blob/main/%EB%A1%9C%EA%B7%B8%EC%9D%B8_%ED%99%95%EC%9D%B8_%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8.jsp)
  
  ```javascript
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if문을 이용한 로그인 확인 프로그램</title>
</head>
<body>
<h3>로그인 확인</h3>
<%!
	String id = "abc";
	String password = "1234"; 
%>
<%
	String userId = "abc";
	String userPassword = "1234";
	String result = null;
	
	if(userId != id){
		result = "회원 가입을 해주세요";
	} else if(userPassword != password){
		result = "비밀번호가 틀립니다.";
	} else{
		result = "방문을 환영합니다.";
	}
%>
<b>사용자 ID : <%= userId %>, 사용자 Password : <%= userPassword %></b> <br>
<b>로그인 ID : <%= id %>, 로그인 Password : <%= password %></b> <br>
<b>로그인 메시지 : <%= result %></b>
</body>
</html>
  ```
</details>
