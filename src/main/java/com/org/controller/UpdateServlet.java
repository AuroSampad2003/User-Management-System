package com.org.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet
{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		int age=Integer.parseInt(req.getParameter("age"));		
		String email=req.getParameter("email");
		long mobile=Long.parseLong( req.getParameter("mobile"));
		
		int id=Integer.parseInt( req.getParameter("id"));		

			
		User user=new User();
		user.setName(name);
		user.setAge(age); 
		user.setEmail(email);
		user.setMobile(mobile);
		user.setId(id);
		UserDao dao= new UserDao();
		dao.updateUser(user);
		
		HttpSession session = req.getSession();
		session.setAttribute("update", "UPDATE USER DATA SUCCESSFULLY");
		resp.sendRedirect("ViewUser.jsp");
		
		
	}

}