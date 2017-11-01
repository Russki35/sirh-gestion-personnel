/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.util.Constantes;

/**
 * @author ETY8
 *
 */
public class EditerCollaborateurController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
			
		Optional<Collaborateur> c = Constantes.COLLAB_SERVICE.listerCollaborateurs().stream()
				.filter(col -> col.getMatricule() == req.getParameter("matricule")).findFirst();
		if (c.isPresent()){
			req.setAttribute("collaborateurs", c.get());
		}
		req.getRequestDispatcher("/WEB-INF/views/collab/editer.jsp").forward(req, rep);
	}
		
	
	
}
