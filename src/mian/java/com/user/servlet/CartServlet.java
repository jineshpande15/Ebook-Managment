package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DAO.CartDAOImpl;
import com.db.DBConnect;
import com.entity.*;


@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	try
	{
		
		int bid=Integer.parseInt(req.getParameter("bid"));
		int uid=Integer.parseInt(req.getParameter("uid"));
//		System.out.println(uid+".........................");
		BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
		BookDtls b=dao.getBookById(bid);
		
		Cart c=new Cart();
		c.setBid(bid);
		c.setUserId(uid);
		c.setBookName(b.getBookName());
		c.setAuthor(b.getAuthor());
		c.setPrice(Double.parseDouble(b.getPrice()));
		c.setTotalPrice(Double.parseDouble(b.getPrice()));
		
		CartDAOImpl dao2=new CartDAOImpl(DBConnect.getConn());
		boolean f=dao2.addCart(c);
		HttpSession session=req.getSession();
	 
		if(f)
		{
			session.setAttribute("addCart", "Added to Cart");
			resp.sendRedirect("all_new_book.jsp");
//			System.out.println("add cartSuccess");
		}
		else
		{
			session.setAttribute("failed", "Something went on Server Please Try Again later");
			resp.sendRedirect("all_new_book.jsp");
//			System.out.println("issue found");
		}
		
		
	}
	catch(Exception e)
	{
		System.out.println("hello exception");
		e.printStackTrace();
	}
	
	}

}
