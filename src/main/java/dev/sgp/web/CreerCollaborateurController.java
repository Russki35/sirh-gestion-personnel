/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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
		String[] datesNaissance = dtn.split("/");
		LocalDate newDateDeNaissance = LocalDate.of(Integer.parseInt(datesNaissance[2]), Integer.parseInt(datesNaissance[1]),Integer.parseInt(datesNaissance[0]));
				
		collabService.sauvegarderCollaborateur(new Collaborateur(
				"M01",
				nom, 
				prenom, 
				newDateDeNaissance, 
				adresse,
				secu, null, null, null, null, null));
		
		
		
		req.setAttribute("listeNoms", collabService.listerCollaborateurs());
		
		if(nom.equals("") || prenom.equals("") || dtn.equals("") || adresse.equals("") || secu.equals("")){
			StringBuilder str = new StringBuilder("Les parametres suivants sont manquants");
			if(nom.equals("")){
				str.append("nom");
			}
			
			if(prenom.equals("")){
				str.append("prenom");
			}
			
			if(dtn.equals("")){
				str.append("dtn");
			}
			
			if(adresse.equals("")){
				str.append("adresse");
			}
			
			if(secu.equals("")){
				str.append("secu");
			}
			
			rep.sendError(HttpServletResponse.SC_BAD_REQUEST, str.toString());
			
			return;
		}
		
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollab.jsp")
		.forward(req, rep);
		
	}
}
