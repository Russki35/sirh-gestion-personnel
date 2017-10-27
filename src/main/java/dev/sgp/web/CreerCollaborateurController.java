/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;


public class CreerCollaborateurController extends HttpServlet {

	static int COMPTEUR = 0;
	private int matricule = COMPTEUR;
	
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		COMPTEUR = COMPTEUR+1;
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollab.jsp")
		.forward(req, rep);
		
	}
	
	protected void doPost (HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
	
		
		
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String dtn = req.getParameter("date");
		String adresse = req.getParameter("adresse");
		String secu = req.getParameter("secu");
		
		
		//TODO instancier un collaborateur
		//TODO mettre ce new collaborateur dans la liste des collabs
		//TODO mettre la liste dans la requête
		
		Collaborateur collab = new Collaborateur(nom, prenom);
		collabService.sauvegarderCollaborateur(collab);
		
		req.setAttribute("listeNoms", collabService.listerCollaborateurs());
		
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollab.jsp")
		.forward(req, rep);
		
	}
}
