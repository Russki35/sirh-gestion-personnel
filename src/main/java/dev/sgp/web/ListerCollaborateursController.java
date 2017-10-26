/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author ETY8
 *
 */
public class ListerCollaborateursController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		req.setAttribute("listeNoms", Arrays.asList("Robert", "Jean", "Hugues"));
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp")
		.forward(req, rep);
		}
		
		
	
}
