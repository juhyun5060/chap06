<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화 파라미터 읽오기</title><!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<body>
초기화 파라미터 목록:
<ul class="list-group">
<%
	//Enumeration: 변경되면 안되는 것 나열(배열속성, 변경X)	getInitParameterNames: logEnabled, DebugLevel
	Enumeration<String> initParamEnum = application.getInitParameterNames();
	while(initParamEnum.hasMoreElements()){	//hasMoreElements: 다음 요소가 있니?
		String initParamName = initParamEnum.nextElement();	//첫번째 리턴 -> 위치나타내는 커서 두번째로 이동 -> 두번째 리턴
%>
<li class="list-group-item"><%= initParamName %> = 
	<%= application.getInitParameter(initParamName) %>
<% 
	}
%>
</ul>
</body>
</html>