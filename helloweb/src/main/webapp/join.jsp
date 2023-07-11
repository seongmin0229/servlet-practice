<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String email = request.getParameter("email");
	String password = request.getParameter("pw");
	String birthyear = request.getParameter("birthyear");
	String gender = request.getParameter("gender");
	String profile = request.getParameter("profile");
	String[] hobbies = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= email %>
	
	<br><br>
	
	<%= password %>
	
	<br><br>
		
	<%= birthyear %>
	
	<br><br>
		
	<%= gender %>
	
	<br><br>
		
	<%= profile.replaceAll("\n", "<br>") %>
	
	<br><br>
		
	<% 
		for(String hobby : hobbies){
	%>
		<h4><%= hobby %></h4>
	<%
		}
	%>
	
	<br><br>
	
	<a href="form.jsp">회원가입</a>
</body>
</html>