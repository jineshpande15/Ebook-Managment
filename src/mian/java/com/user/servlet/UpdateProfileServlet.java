package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/update_profile")
public class UpdateProfileServlet extends  HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 try
		    {
			 int id =Integer.parseInt(req.getParameter("id"));
		    String name=req.getParameter("fname");
		    String email=req.getParameter("email");
		    String phno=req.getParameter("phno");
		    String password=req.getParameter("password");
		    System.out.print(password+" "+id);
		    UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
		    boolean f=dao.checkPassword(id,password);
			System.out.println(f);
		    User us=new User();
		    us.setId(id);
		    us.setName(name);
		    us.setEmail(email);
		    us.setPhno(phno);
//		    us.setPassword(password);
		   HttpSession session=req.getSession();
		   
		        if(f)
		        {
//		        System.out.println("User Register Success");
		        	boolean f2=dao.updateProfile(us);
		        	if(f2)
		        	{
		        		session.setAttribute("succMsg", "Profile Updated Successfully ");
		        		resp.sendRedirect("edit_profile.jsp");
		        		
		        	}
		        	else
		        	{
		        	 	session.setAttribute("failedMsg", "Something went wrong");
			        	resp.sendRedirect("edit_profile.jsp");
		        	}
		        }
		        else
		        {
//		        	System.out.println("User Register failed");
		        	session.setAttribute("failedMsg", "You have entered wrong password");
		        	resp.sendRedirect("edit_profile.jsp");
		        }
		   
//		   
		    
		    }
		    catch(Exception e)
		    {
		        e.printStackTrace();
		    }
	}
	

}
