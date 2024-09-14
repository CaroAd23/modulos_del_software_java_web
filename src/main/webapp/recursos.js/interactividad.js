/*este archivo JavaScrip gestiona la validacion de los parametros y restricciones 
 * de los campos de entra del formulario de registro de usuarios.*/
const nombre= document.getElementById("nombre");
const email= document.getElementById("email");
const password= document.getElementById("password");
const form= document.getElementById("form");
const parrafo= document.getElementById("warnings");

form.addEventListener("submit", e=>{
    e.preventDefault()
    let warnings= ""
    let regexEmail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    let entrar=false;
    parrafo.innerHTML=""
    if( nombre.value.length <6){
        warnings +='el nombre no es valido <br>'
        entrar=true;

    }
  
    if( !regexEmail.test(email.value)){
  warnings +='el email no es valido <br>'
        entrar=true;
    }
    if(password.value.length <8){
        warnings +='la contraseña no es valida <br>'
        entrar=true;
    }
    if(entrar){
        parrafo.innerHTML= warnings
    }
    else{
        parrafo.innerHTML= "enviado"  
    }

})


