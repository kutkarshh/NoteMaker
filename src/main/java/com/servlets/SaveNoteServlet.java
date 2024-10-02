package com.servlets;

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
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// Fetch content and Title from Add Note Form
			String title = request.getParameter("title");
			String desc = request.getParameter("desc");

			Note note = new Note(title, desc, new Date());
			System.out.println(note);
			// Now we write Hibernate Session save code to insert data into the database
			// using hibernate methods
			// hibernate : save()
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.save(note);
			tx.commit();
			session.close();

			// Returing a Feedback message on to the Front End
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center;'>Note is Successfully Added!!</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all Notes</a></h1>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
