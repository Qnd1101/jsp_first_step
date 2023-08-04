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
