package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.Factoryprovider;


public class Saveserver extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Saveserver() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	    String title=request.getParameter("title");
	    String content=request.getParameter("content");
	    
	    Note t=new Note(title, content, new Date());
//	    System.out.println(t.getId());
//	    System.out.println(t.getTitle());
	    
	    //hibernate save
	    Session s=Factoryprovider.getsf().openSession();
	    Transaction ts=s.beginTransaction();
	    s.save(t);
	    ts.commit();
	    s.close();
	    response.sendRedirect("Success.jsp");

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
