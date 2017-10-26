$(document).ready(function(){
    
       
    $('#valider').click(function(){
        valid = true;
        if($("#nom").val() == ""){
            $("#nom").next(".error-message").fadeIn().text("Veuillez entrer un nom");
            valid = false;
        }
        /*else if(!$("#prenom").val().match('/^[a-z]+$/i')){
            $("#prenom").next(".error-message").fadeIn().text("Veuillez entrer un prénom valide");
        }*/
        else{
            $("#nom").text(".error-message").fadeOut();
        }

        
        if($("#prenom").val() == ""){
            $("#prenom").next(".error-message").fadeIn().text("Veuillez entrer un prénom");
            valid = false;
        }
        else{
            $("#prenom").text(".error-message").fadeOut();
            
        }


        if($("#date").val() == ""){
            $("#date").next(".error-message").fadeIn().text("Veuillez entrer une date de naissance");
            valid = false;
        }
        else{
            $("#date").text(".error-message").fadeOut();
        }


        if($("#adresse").val() == ""){
            $("#adresse").next(".error-message").fadeIn().text("Veuillez entrer une adresse");
            valid = false;
        }
        else{
            $("#adresse").text(".error-message").fadeOut();
        }


        if($("#secu").val() == ""){
            $("#secu").next(".error-message").fadeIn().text("Veuillez entrer un numéro de sécurité sociale");
            valid = false;
        }
        else{
            $("#secu").text(".error-message").fadeOut();
        }


        return valid;
    });
    
   
    
});
    
    
    