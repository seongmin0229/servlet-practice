package com.bitacademy.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitacademy.guestbook.dao.GuestBookDao;
import com.bitacademy.guestbook.vo.GuestBookVo;

public class GuestBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String actionName = request.getParameter("a");
		response.setCharacterEncoding("utf-8");
		
		if("add".equals(actionName)) {
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			// message.replaceAll("\n", "<br>");
			GuestBookVo vo = new GuestBookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setText(message);
			new GuestBookDao().insert(vo);
			
			response.sendRedirect("/guestbook02/gb");
		}else if("delete_form".equals(actionName)) {
			String no = request.getParameter("no");
			request.setAttribute("no", no);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
		}else if("delete".equals(actionName)) {
			System.out.println(request.getParameter("no") + ", " + request.getParameter("password"));
			String no = request.getParameter("no");
			String password = request.getParameter("password");
			GuestBookVo vo = new GuestBookVo();
			vo.setNo(Long.parseLong(no));
			vo.setPassword(password);
			GuestBookDao dao = new GuestBookDao();
			dao.delete(vo);
			response.sendRedirect("/guestbook02/gb");
		}else {
			GuestBookDao dao = new GuestBookDao();
			List<GuestBookVo> list = dao.findAll();
			
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
