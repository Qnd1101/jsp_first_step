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
