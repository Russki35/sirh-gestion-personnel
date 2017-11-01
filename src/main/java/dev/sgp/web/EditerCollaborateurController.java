/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Optional;
import java.util.stream.Collectors;

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
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Optional<Collaborateur> c = Constantes.COLLAB_SERVICE.listerCollaborateurs().stream()
				.filter(col -> col.getMatricule() == req.getParameter("matricule")).findFirst();
		if (c.isPresent()){
		
			Collaborateur collaborateur = c.get();
			
			collaborateur.setMatricule(req.getParameter("matricule"));

			collaborateur.setNom(req.getParameter("nom"));
			collaborateur.setPrenom(req.getParameter("prenom"));
			collaborateur.setAdresse(req.getParameter("adresse"));
			collaborateur.setSecu(req.getParameter("secu"));
			collaborateur.setTelephone(req.getParameter("telephone"));
			collaborateur.setEmailPro(req.getParameter("emailPro"));
			collaborateur.setPhoto(req.getParameter("photo"));
			
			if(req.getParameter("desactiver")==null){
				collaborateur.setActif(true);
			}else{
				collaborateur.setActif(false);
			}
			
			
			req.setAttribute("collabs", Constantes.COLLAB_SERVICE.listerCollaborateurs().stream().filter(collab -> collab.getActif()).collect(Collectors.toList()));
			req.getRequestDispatcher("/WEB-INF/views/collab/listerCollab.jsp").forward(req, resp);
			
		}
		

	}
	
}
