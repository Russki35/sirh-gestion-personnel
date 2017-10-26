/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author ETY8
 *
 */
public class EditerCollaborateurController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		if(req.getParameter("matricule") == null){
			rep.sendError(400, "Matricule introuvable");
		}
		else{
			rep.setStatus(201);
			rep.getWriter().write("<h1>Edition des collaborateurs</h1>" + "<br>matricule : " + req.getParameter("matricule"));
		}
								
	}
	
}
