<html>
    <head>
        
        <meta charset="utf-8" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        <script src="http://cdn.jsdelivr.net/jquery.validation/1.14.0/jquery.validate.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <script src="js/form2.js"></script>
        <link rel="stylesheet" href="css/creerCollab.css">
        <title>Créer un nouveau collaborateur</title>
    </head>
    <body>
            <ul class="nav nav-tabs">
                    <li class="nav-item">
                      <a class="nav-link" href="#">LOG</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" href="listerCollab.html">Collaborateurs</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="statistiques.html">Statistiques</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link disabled" href="activite.html">Activités</a>
                    </li>
                  </ul>
        <h1 class="col-md-8">Nouveau Collaborateur</h1>
            
        <form method="POST" id="mainForm">
            <div class="form-group row">
                <label  class="col-sm-2 col-form-label">Nom</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="nom" required>
                  <div class="error-message"></div>
                </div>
              </div>
              <div class="form-group row">
                <label  class="col-sm-2 col-form-label">Prénom</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="prenom" required>
                  <div class="error-message"></div>
                </div>
              </div>
              <div class="form-group row">
                <label  class="col-sm-2 col-form-label">Date de naissance</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="date" required>
                  <div class="error-message"></div>
                </div>
              </div>
              <div class="form-group row">
                <label  class="col-sm-2 col-form-label">Adresse</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="adresse" required>
                  <div class="error-message"></div>
                </div>
              </div>
              <div class="form-group row">
                <label  class="col-sm-2 col-form-label">Numéro de sécurité sociale</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="secu" required>
                  <div class="error-message"></div>
                </div>
              </div>
              <div class="col-sm-2 offset-md-7">                 
                    <a id="valider" class="btn btn-primary" type="submit" href="#" role="button">Créer</a>                 
              </div>
        </form>
    </body>
    
</html>