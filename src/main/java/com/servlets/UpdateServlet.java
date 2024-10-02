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

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			System.out.println(request.getParameter("note_Id"));
			int id = Integer.parseInt(request.getParameter("note_Id").trim());
			String title = request.getParameter("title");
			String desc = request.getParameter("desc");

			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();

			Note note = s.get(Note.class, id);
			note.setTitle(title);
			note.setDesc(desc);
			note.setAddedDate(new Date());

			// saving new updated details in note
			tx.commit();
			s.close();

			// Returing a Feedback message on to the Front End
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center;'>Note is Successfully Updated!!</h1>");
			out.println(
					"<h1 style='text-align:center;'><a class='btn btn-primary btn-lg' href='all_notes.jsp'>View all Notes</a></h1>");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
