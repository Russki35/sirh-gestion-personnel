<%@ page import="java.util.List"%>
<%@ page import="dev.sgp.entite.Collaborateur"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<html>

<head>

<meta charset="utf-8" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="css/card.css">
<title>Les collaborateurs</title>
</head>

<body>


	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link" href="#">LOG</a></li>
		<li class="nav-item"><a class="nav-link active"
			href="listerCollab.html">Collaborateurs</a></li>
		<li class="nav-item"><a class="nav-link" href="statistiques.html">Statistiques</a>
		</li>
		<li class="nav-item"><a class="nav-link disabled"
			href="activite.html">Activités</a></li>
	</ul>

	<div class="col-sm-2 offset-md-10">
		<a class="btn btn-primary" type="submit" href="<%=request.getContextPath() %>/collaborateurs/creerCollab" role="button">Ajouter
			un collaborateurs</a>
	</div>



	<h1>Les collaborateurs</h1>
	<form method="POST">
		<div class="form-group row">
			<label class="col-sm-6 col-form-label">Rechercher un nom ou
				un prénom qui commence par :</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="nom" required>
			</div>
			<a class="btn btn-primary" type="submit" href="#" role="button">Rechercher</a>
			<label class="form-check-label"> <input type="checkbox"
				class="form-check-input"> Voir les collaborateurs désactivés
			</label>
		</div>
		<div class="form-group row">
			<label class="col-sm-6 col-form-label">Rechercher un nom ou
				un prénom qui commence par :</label>
			<div class="col-sm-4">
				<select class="selectpicker">
					<optgroup label="Tous">
						<option>Comptabilité</option>
						<option>RH</option>
						<option>L'Informatique</option>
					</optgroup>

				</select>

			</div>
		</div>
	</form>






	<div class="container">



		<%
			List<Collaborateur> collabs = (List<Collaborateur>) request.getAttribute("listeNoms");
			int cpt = 0;
			for (Collaborateur collab : collabs) {
				if (cpt == 0 || cpt % 2 == 0) {
		%>
		<div class="row">
			<%
				}
			%>

			<div class="col-md-6">
				<div class="media">
					<img class="align-self-center mr-5"
						src="https://assets.chooseyourboss.com/companies/logos/000/004/322/square/Logo_DTA.jpg?1457453234"
						alt="Generic placeholder image">
					<div class="media-body">
						<h5 class="mt-1"><%=collab.getNom()%>
							<%=collab.getPrenom()%></h5>
						<p>Fonction</p>
						<p>Département</p>
						<p>Email</p>
						<p class="mb-0">Téléphone</p>
					</div>
					<a class="btn btn-primary" type="submit" href="<%=request.getContextPath() %>/collaborateurs/editer?matricule=<%=collab.getMatricule() %>" role="button">Editer</a>
				</div>
				<!-- fin media-->
			</div>
			<%
				cpt++;
					if (cpt % 2 == 0) {
			%>
		</div>
		<!-- fin row-->
		<%
			}

			}
		%>








	</div>
	<!-- fin container -->

</body>