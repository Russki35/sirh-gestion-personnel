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
            <a class="nav-link" href="listerCollab.html">Collaborateurs</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="statistiques.html">Statistiques</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="activite.html">Activités</a>
          </li>
        </ul>
        <div class="col-sm-2 offset-md-10">
                <a class="btn btn-primary" type="submit" href="#" role="button">Ajouter un nouveau collaborateurs</a>
            </div>

        <h1>Statistiques</h1>

        <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">Chemin</th>
                    <th scope="col">Nombre de visites</th>
                    <th scope="col">Min(ms)</th>
                    <th scope="col">Max(ms)</th>
                    <th scope="col">Moyenne(ms)</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">/collaborateurs/editer</th>
                    <td>500</td>
                    <td>10</td>
                    <td>1000</td>
                    <td>500</td>
                  </tr>
                  <tr>
                    <th scope="row">/collaborateurs/lister</th>
                    <td>125</td>
                    <td>5</td>
                    <td>600</td>
                    <td>90</td>
                  </tr>
                  <tr>
                    <th scope="row">/collaborateurs/nouveau</th>
                    <td>200</td>
                    <td>2</td>
                    <td>58</td>
                    <td>789</td>
                  </tr>
                  
                </tbody>
              </table>
</html>