 package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
//import com.sun.java.swing.plaf.windows.TMSchema.Part;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.db.DBConnect;
import com.entity.BookDtls;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
		{
			String bookName=req.getParameter("bname");
			String author=req.getParameter("author");
//			String price=req.getParameter("");
			String price=req.getParameter("price");
			String categories=req.getParameter("btype");
			String status=req.getParameter("bstatus");
			Part part=	req.getPart("bimg");
			String fileName=part.getSubmittedFileName();
		BookDtls b=new BookDtls(bookName,author,price,categories,status,fileName,"admin");

					BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());

					
					
					boolean f=dao.addBooks(b);
					HttpSession session=req.getSession();
					if(f)
					{
						String  path=getServletContext().getRealPath("")+"book";
						File file= new File(path);
						part.write(path+File.separator+fileName);
						
						session.setAttribute("succMsg","Book add Successfully");
						resp.sendRedirect("admin/add_books.jsp");
					}
					else
					{
						session.setAttribute("failedMsg","Something Wrong on server");
						resp.sendRedirect("admin/add_books.jsp");
						
					}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
