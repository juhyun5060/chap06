<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 발생</title>
</head>
<body>
요청 처리 과정에서 에러가 발생하였습니다.<br>
빠른 시간 내에 문제를 해결하도록 하겠습니다.
<p>
	에러 타입: <%= exception.getClass().getName() %> <br>
	에러 메시지: <b><%= exception.getMessage() %> </b>
</p>
<!--
동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라만세 
무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세
(예전 버전 익스플로어는 512파이트 이하일시 기본 에러페이지 출력)
 -->
</body>
</html>