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
@WebServlet("/add")

public class AddUser extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String ageStr=req.getParameter("age");
		String email=req.getParameter("email");
		String mobileStr=req.getParameter("mobile");
		String password=req.getParameter("password");
		
		int age=Integer.parseInt(ageStr);
		long mobile=Long.parseLong(mobileStr);
		
		User user=new User();
		user.setName(name);
		user.setAge(age);
		user.setMobile(mobile);
		user.setEmail(email);
		user.setPassword(password);
		
		UserDao dao=new UserDao();
		dao.saveUser(user);
		
		HttpSession session=req.getSession();
		session.setAttribute("added", "user added successfully");
		
		resp.sendRedirect("ViewUser.jsp");
	}

}