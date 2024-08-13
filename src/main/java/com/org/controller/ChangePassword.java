package com.org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;
@WebServlet("/change")

public class ChangePassword extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String currentpassword=req.getParameter("currentpassword");
		String newpassword=req.getParameter("newpassword");
		String confirmpassword=req.getParameter("confirmpassword");
		
		HttpSession session=req.getSession();	
		User user=(User)session.getAttribute("userObj");
		
		
		PrintWriter out=resp.getWriter();
		
		if(user!=null & currentpassword.equals(user.getPassword())) {
			if(newpassword.equals(confirmpassword)) {
				
				 UserDao dao = new UserDao();
	             dao.ChangePassword(newpassword, user.getId());
	             
	             HttpSession session1=req.getSession();
	        		session1.setAttribute("change", " Password Changed Login again ");
	             
	             resp.sendRedirect("login.jsp");
				
				
			}
			else {
                out.println("<p>New password and confirm password do not match.</p>");
            }
		}
		else {
            out.println("<p>Current password is incorrect.</p>");
		}
	}
}