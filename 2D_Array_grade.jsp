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
