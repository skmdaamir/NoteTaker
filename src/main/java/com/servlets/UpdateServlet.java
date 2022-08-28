package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());
			Note note = s.get(Note.class, noteId);
			
			note.setTitle(request.getParameter("title"));
			note.setContent(request.getParameter("content"));
			note.setAddedDate(new Date());
			tx.commit();
			s.close();
			
			response.sendRedirect("all_notes.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
