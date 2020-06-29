<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "/error/viewErrorMessage.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ArithmeticError 발생</title>
</head>
<body>
name 파라미터 값 : 
<%= 1 / 0 %>
</body>
</html>