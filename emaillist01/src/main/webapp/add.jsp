<%@page import="com.bitacademy.emaillist.dao.EmaillistDao"%>
<%@page import="com.bitacademy.emaillist.vo.EmaillistVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	EmaillistDao dao = new EmaillistDao();
	dao.insert(vo);
	
	response.sendRedirect("/emaillist01");
%>