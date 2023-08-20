package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.Factoryprovider;

/**
 * Servlet implementation class Deleteserver
 */
public class Deleteserver extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Deleteserver() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	    int nId=Integer.parseInt(request.getParameter("note_id").trim());
	    Session s=Factoryprovider.getsf().openSession();
	    Transaction ts=s.beginTransaction();
	    Note n=s.get(Note.class, nId);
	    s.delete(n);
	    ts.commit();
	    s.close();
	    
	    response.sendRedirect("view.jsp");
	    System.out.println("delet successfully");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
