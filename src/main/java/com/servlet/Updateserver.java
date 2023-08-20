package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.Factoryprovider;


public class Updateserver extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Updateserver() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id").trim());
		String  title=request.getParameter("title");
		String content=request.getParameter("content");
	    Session s=Factoryprovider.getsf().openSession();
	    Transaction ts=s.beginTransaction();
	    Note n=s.get(Note.class, id);
	    n.setTitle(title);
	    n.setContent(content);
	    n.setAdddate(new Date());
	    ts.commit();
	    s.close();
	    response.sendRedirect("view.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
