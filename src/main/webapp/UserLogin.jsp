<!<!-- esta pagina contiene el formulario de registro de usuarios.  -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sig in</title>
        <link rel="stylesheet" href="Styles/sesion.css">
    <link rel="shortcut icon" href="IMG/OIP.jpg" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
      <div class="contanier-form">
        <div class="information">
            <div class="info-childs">
                <img class="img1" src="IMG/OIP.jpg" alt="">
                
                <h2 class="t1">Tus datos, <br> Más seguros, <br> que nunca</h2>
                <hr>
                <img class="img2" src="https://th.bing.com/th/id/OIP.6tpBL-3VoRI1HPPDjcceLgHaGT?pid=ImgDet&w=179&h=152&c=7&dpr=1,5" alt="">
                
            </div>
        </div>
        <div class="form-information">
            <div class="form-information-childs">
                <h2>Iniciar sesión</h2>
                <div class="icons">
                    <i class='bx bxl-google'></i>
                    <i class='bx bxl-facebook-circle'></i>
                    <i class='bx bxl-linkedin-square'></i>
                   </div>
                    <p> Inicia sesión y accede a tu cuenta</p>
                    <form action="LoginServlet" method="POST" class="form" id="form">
                        <label>
                        <i class='bx bx-user'></i>
                        <input type="text" id="nombre" name="nombre" placeholder="Nombre de usuario" required>
                        </label>
                      
                        <label>
                            <i class='bx bx-lock-alt'></i>
                            <input type="password" id="password" name="password"  placeholder="Contraseña(8 caracteres min.)" required>

                        </label>
                       
                        <input  type="submit" value="Iniciar Sesión">
                        <p class="warnings" id="warnings"></p>
           
                      </form>
                      <form>
                        <input type="submit" class="forgot" value="¿Olvidaste tu Contraseña?">

                    </form>
              
            </div>
        </div>
    </div>
        <script src="interactividad.js"></script>

    </body>
</html>
