/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

/**
 * @author ETY8
 *
 */
public class ListerCollaborateursController extends HttpServlet {
	
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		collabService.sauvegarderCollaborateur(new Collaborateur("Coty", "René"));
		collabService.sauvegarderCollaborateur(new Collaborateur("Auriol", "Vincent"));
		collabService.sauvegarderCollaborateur(new Collaborateur("Coty", "René"));
		collabService.sauvegarderCollaborateur(new Collaborateur("Auriol", "Vincent"));
		
		
		req.setAttribute("listeNoms", collabService.listerCollaborateurs());
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollab.jsp")
		.forward(req, rep);
		
		}
					
}
