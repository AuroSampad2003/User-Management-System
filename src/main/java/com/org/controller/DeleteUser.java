package com.org.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;

@WebServlet("/delete")

public class DeleteUser extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String Id =  req.getParameter("Id");
       System.out.println(Id);
        
        if (Id != null) {
           
                int id = Integer.parseInt(Id);
                
                UserDao dao = new UserDao();
                dao.deleteUser(id);
                
                HttpSession session=req.getSession();
        		session.setAttribute("delete", "user deleted ");
                
                resp.sendRedirect("ViewUser.jsp");      
        } 
		
	}

}