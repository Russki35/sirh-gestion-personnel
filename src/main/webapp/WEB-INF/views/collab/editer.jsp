<%@page import="java.util.List"%>
<%@page language="java" pageEncoding="UTF-8"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%
	Collaborateur collab = (Collaborateur) request.getAttribute("collaborateur");
%>
<html>
        <head>
            
            <meta charset="utf-8" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
            
            <title>Les collaborateurs</title>
        </head>
        <ul class="nav nav-tabs">
                <li class="nav-item">
                  <a class="nav-link" href="#">LOG</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="#">Collaborateurs</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Statistiques</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link disabled" href="#">Activités</a>
                </li>
        </ul>
      
    
    <div class="row">
      
      <div class="col-4">
        <img class="col-12" src="img/hubert.jpg" alt="collaborateur">
      </div>
      <div class="col-7">
          <div class="row"><div class="col-7">
            <h1>Nom - Prenom - Matricule</h1></div><div class="offset-col-1"><label id="desactiverlabel" for="desactiverbox"><input id="desactiverbox" type="checkbox" class="form-check-input" >Désactiver</label></div></div>
            <%=collab.getMatricule()%>
				<input type=hidden name="matricule"
					value="<%=collab.getMatricule()%>" />
            <div class="row">
              <div id="accordion" role="tablist" class="col-12">
                <div class="card">
                  <div class="card-header" role="tab" id="headingOne">
                    <h5 class="mb-0">
                      <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Identité
                      </a>
                    </h5>
                  </div>
                  <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                      <div class="row"><label class="card-text col-6">Civilité</label>
                        <select class="form-control col-6" id="exampleFormControlSelect1">
                          <option>Mr</option>
                          <option>Mme</option>
                        </select>
                      </div>
                      
                      <div class="row"><label class="card-text col-6">Nom</label><input name="nom"
											type="text" class="col-12" value="<%=collab.getNom()%>" /></div>
                      <div class="row"><label class="card-text col-6">Prénom</label><input name="prenom"
											type="text" class="col-12" value="<%=collab.getPrenom()%>" /></div>
                      <div class="row"><label class="card-text col-6">Date de naissance</label><input type="text" class="col-6" value="15/09/1949"/></div>
                      <div class="row"><label class="card-text col-6">Adresse</label><input name="adresse"
											type="text" class="col-12" value="<%=collab.getAdresse()%>" /></div>
                      <div class="row"><label class="card-text col-6">Numéro de sécurité sociale</label><input name="secu"
											type="text" class="col-12" value="<%=collab.getSecu()%>" /></div>
                      <div class="row"><label class="card-text col-6">Téléphone</label><input name="telephone"
											type="text" class="col-12" value="<%=collab.getTelephone()%>" /></div>
                      <div class="row"><label class="card-text col-6">Email</label><input type="text"
											class="col-12" value="<%=collab.getEmailPro()%>" /></div>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header" role="tab" id="headingTwo">
                    <h5 class="mb-0">
                      <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        Poste
                      </a>
                    </h5>
                  </div>
                  <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                    <div class="card-body">
                      <div class="row"><label class="card-text col-6">Département</label><select class="form-control col-6" id="exampleFormControlSelect1">
                        <option selected>Informatique</option>
                        <option>Comptabilité</option>
                        <option>Ressources humaines</option>
                      </select></div>
                      <div class="row"><label class="card-text col-6">Nom</label><input type="text" class="col-6" value="ETY5"/></div>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header" role="tab" id="headingThree">
                    <h5 class="mb-0">
                      <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Coordonnées banquaires
                      </a>
                    </h5>
                  </div>
                  <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                    <div class="card-body">
                      <div class="row"><label class="card-text col-6">IBAN</label><input type="text" class="col-6" value=""/></div>
                      <div class="row"><label class="card-text col-6">BIC</label><input type="text" class="col-6" value=""/></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <input type="button" value="Sauvegarder" id="sauvegarder" class="btn btn-primary offset-10"/>
            </div>
          </div>
    </div><!-- fin row -->
</html>
