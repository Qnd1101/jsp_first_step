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
