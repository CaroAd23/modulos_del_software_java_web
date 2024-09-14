<!<!-- esta pagina contiene el formulario de registro de usuarios. -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sig in up</title>
        <title>SRU registro</title>
    <link rel="stylesheet" href="Styles/registro.css">
    <link rel="shortcut icon" href="IMG/OIP.jpg" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
   
    </head>
    <body>
   
        
         <!-- inicia presentacion-->
    <div class="contanier-form">
        <div class="information">
            <div class="info-childs">
                <img class="img1" src="IMG/OIP.jpg" alt="">
                
                <h2 class="t1">Más rapido, <br> Más seguro, <br> Más interactivo</h2>
                <hr>
                <img class="img2" src="https://th.bing.com/th/id/OIP.6tpBL-3VoRI1HPPDjcceLgHaGT?pid=ImgDet&w=179&h=152&c=7&dpr=1,5" alt="">
                
            </div>
            <!--termina presentacion-->
        </div>
        <!-- informacion del formulario de registro-->
        <div class="form-information">
            <div class="form-information-childs">
                <h2>Registrarse</h2>
                <div class="icons">
                    <i class='bx bxl-google'></i>
                    <i class='bx bxl-facebook-circle'></i>
                    <i class='bx bxl-linkedin-square'></i>
                   </div>
                    <p> Registrate para crear una cuenta</p>
                    
                    <form action="RegisterServlet" method="POST" class="formul" id="form">
                        <label for="nombre">
                        <i class='bx bx-user'></i>
                        <!-- formulario de registro -->
                        <input type="text" id="nombre" name="nombre" required placeholder="Nombre de usuario">
                        </label>
                        <label for="email">
                            <i class='bx bxl-gmail'></i>
                            <input type="email" id="email" name="email" required placeholder="Correo electronico">
                        </label>
                        <label for="password">
                            <i class='bx bx-lock-alt'></i>
                            <input type="password" id="password" name="password" required placeholder="Contraseña(8 caracteres min.)">
                            <!-- fin formulario -->
                        </label>
                       
                        <input  type="submit" name="action"  value="Registrarse">
                        <p class="warnings" id="warnings"></p>
                    </form>
                    
                     <script src=" recursos.js/interactividad.js"></script> 
            </div>
        </div>
    </div>
    </body>
</html>
