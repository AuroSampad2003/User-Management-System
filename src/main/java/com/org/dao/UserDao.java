package com.org.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.org.dto.User;

public class UserDao 
{
	public void saveUser(User user) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_db","root","Auro@573");
			
			PreparedStatement pst=con.prepareStatement("INSERT INTO user(name,age,mobile,email,password) VALUES(?,?,?,?,?)");
			
			pst.setString(1, user.getName());
			pst.setInt(2, user.getAge());
			pst.setLong(3, user.getMobile());
			pst.setString(4, user.getEmail());
			pst.setString(5, user.getPassword());
		
			pst.executeUpdate();
			
			con.close();
			
		} catch ( ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public User fetchUserByEmailAndPassword(String email,String password) {
			
		User user=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
				
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_db","root","Auro@573");
				
			PreparedStatement pst=con.prepareStatement("SELECT * FROM user WHERE email=? AND password=?");
				
			pst.setString(2, password);
			pst.setString(1, email);
				
			ResultSet rst=pst.executeQuery();
				
			if(rst.next()){
				user=new User();
				user.setId(rst.getInt("id"));
				user.setName(rst.getString("name"));
				user.setAge(rst.getInt("age"));
				user.setMobile(rst.getLong("mobile"));	
		        user.setEmail(rst.getString("email"));
		        user.setPassword(rst.getString("password"));
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}
	
	public User fetchUserById(int id) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_db","root","Auro@573");
			
			PreparedStatement pst=con.prepareStatement("select * from user where id=?");
			 
			pst.setInt(1, id);
			
			ResultSet rst=pst.executeQuery();
			
			if(rst.next())
			{
				User user=new User();
				user.setId(rst.getInt("id"));
				user.setName(rst.getString("name"));
				user.setAge(rst.getInt("age"));
	            user.setEmail(rst.getString("email"));
	            user.setPassword(rst.getString("password"));
	            user.setMobile(rst.getLong("mobile"));
	            
	            return user;
	            	
			}
			con.close();
			
			 
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}

	public List<User> fetchAllUser(){
		
		List<User> list=new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_db","root","Auro@573");
			
			PreparedStatement pst=con.prepareStatement("select * from user ");
			
			ResultSet rst=pst.executeQuery();
			
			while(rst.next()) {
					User user = new User();
	                user.setId(rst.getInt("id"));
	                user.setName(rst.getString("name"));
	                user.setAge(rst.getInt("age"));
	                user.setEmail(rst.getString("email"));
	                user.setPassword(rst.getString("password"));
	                user.setMobile(rst.getLong("mobile"));
	                
	                list.add(user);
			}
			con.close();

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}


	public void updateUser(User user) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_db","root","Auro@573");
			
			PreparedStatement pst=con.prepareStatement("update user set name=?, age=?, mobile=?, email=? where id=? ");
			
			pst.setString(1, user.getName());
			pst.setInt(2, user.getAge());
			pst.setLong(3, user.getMobile());
			pst.setString(4, user.getEmail());
			pst.setInt(5, user.getId());


			
			
			
			pst.executeUpdate();
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();

		}
		}
		public void ChangePassword(String password,int id) {
			 try {
			        Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_db","root","Auro@573");

			        PreparedStatement pst = con.prepareStatement("update user set password = ? where id = ?");
			        pst.setString(1, password);
			        pst.setInt(2, id);

			        pst.executeUpdate();

			        con.close();
			    } catch (ClassNotFoundException | SQLException e) {
			        e.printStackTrace();
			    }
		
			
		}
	public void deleteUser(int id) {
			 try {
			        Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_db","root","Auro@573");

			        PreparedStatement pst = con.prepareStatement("delete from  user  where id = ?");
			       
			        pst.setInt(1, id);

			        pst.execute();

			        con.close();
			    } catch (ClassNotFoundException | SQLException e) {
			        e.printStackTrace();
			    }
		}
	}

