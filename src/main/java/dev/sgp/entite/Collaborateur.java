/**
 * 
 */
package dev.sgp.entite;

import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.ResourceBundle;


/**
 * @author ETY8
 *
 */
public class Collaborateur {
	
	private static int id;
	private static int currentId = 100;
	
	private String matricule;
	private String nom;
	private String prenom;
	private LocalDate dtn;
	private String adresse;
	private String secu;
	private String emailPro;
	private String photo;
	private ZonedDateTime dateHeureCreation;
	private Boolean actif;
	
	
	public Collaborateur(String prenom, String nom){
		this.nom = nom;
		this.prenom = prenom;
		
	}




	public Collaborateur(String matricule, String nom, String prenom, LocalDate dtn, String adresse, String secu,
			String emailPro, String photo, ZonedDateTime dateHeureCreation, Boolean actif) {

		this.matricule = matricule;
		this.nom = nom;
		this.prenom = prenom;
		this.dtn = dtn;
		this.adresse = adresse;
		this.secu = secu;
		String suffixe = ResourceBundle.getBundle("email").getString("email");
		this.emailPro = nom + "." + prenom + suffixe;
		this.photo = photo;
		this.dateHeureCreation = dateHeureCreation;
		this.actif = actif;
	}


	public static int getId() {
		return id;
	}



	public static void setId(int id) {
		Collaborateur.id = id;
	}


	public String getMatricule() {
		return matricule;
	}





	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}





	public String getNom() {
		return nom;
	}





	public void setNom(String nom) {
		this.nom = nom;
	}





	public String getPrenom() {
		return prenom;
	}





	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}





	public LocalDate getDtn() {
		return dtn;
	}





	public void setDtn(LocalDate dtn) {
		this.dtn = dtn;
	}





	public String getAdresse() {
		return adresse;
	}





	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}





	public String getSecu() {
		return secu;
	}





	public void setSecu(String secu) {
		this.secu = secu;
	}





	public String getEmailPro() {
		return emailPro;
	}





	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}





	public String getPhoto() {
		return photo;
	}





	public void setPhoto(String photo) {
		this.photo = photo;
	}





	public ZonedDateTime getDateHeureCreation() {
		return dateHeureCreation;
	}





	public void setDateHeureCreation(ZonedDateTime dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}





	public Boolean getActif() {
		return actif;
	}





	public void setActif(Boolean actif) {
		this.actif = actif;
	}





	
	
	

}
