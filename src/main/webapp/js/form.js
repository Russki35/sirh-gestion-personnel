$(document).ready(function(){

    var $nom = $('#nom'),
        $prenom = $('#prenom'),
        $date = $('#date'),
        $adresse = $('#adresse'),
        $secu = $('#secu'),
        $champ = $('.form-control'),
        $valid = $('#valid'),
        $message = $('.is-invalid').css({
            color : 'red'
        }),
        $envoi = $('#valid'),
        $reset = $('.reset');



$champ.keyup(function(){
    if($(this).val().length < 1){
        $(this).css({
            
        color : 'red'
        });
        $message.show();
    }
    else{
        $(this).css({ 
        borderColor : 'green',
        color : 'green'
        });
        $message.hide();

    }

  });

  $envoi.click(function(e){
    e.preventDefault(); 

    
    verifier($nom);
    verifier($prenom);
    verifier($date);
    verifier($adresse);
    verifier($secu);
    
  });

  

  function verifier(champ){
    if(champ.val() == ""){ 
        $message.show();
        champ.css({ 
            borderColor : 'red',
            color : 'red'
        });
    }
}



});


