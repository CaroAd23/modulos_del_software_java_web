<!-- esta es la pagina principal del aplicativo que cuenta con informacion 
sobre el sistema y sus servicios; ademas de los enlaces o botones para registrarse
e iniciar sesion, esta pagina se comunica con el servlet llamado "comunicationServlet" 
definido en el paquete de logica, especificamente en el subpaquete presentacion.-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de inicio</title>
        
         <link rel="stylesheet" href="Styles/inicio.css">
    <link rel="shortcut icon" href="IMG/OIP.jpg" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    
    </head>
    <body>
        <div class="information-general">
        <!-- ENCABEZADO-->
    <div class="information-header">
        <header>
            <img src="https://static.vecteezy.com/system/resources/previews/013/401/347/large_2x/sru-letter-logo-design-with-black-background-in-illustrator-logo-calligraphy-designs-for-logo-poster-invitation-etc-free-vector.jpg" alt="">
            <h1>SRU software de registro</h1>
        </header>
    </div>
    <!-- MENU DE NAVEGACIÓN-->
    <div class="information-nav">
       
        <nav>
                  <form id="form1" action="OptionsServlet" method="POST">
             
                      <button class="opciones" type="submit" name="action" value="inicio"><strong>inicio</strong></button></li>
                  <button  class="opciones" type="submit" name="action" value="nosotros"> <strong>Sobre nosotros</strong></button></li>
<button  class="opciones" type="submit" name="action" value="contacto"> <strong>Contactanos</strong></button></li>
<button  class="opciones" type="submit" name="action" value="informacion"> <strong>Acerca de SRU</strong> </button></li>

                </form>
        </nav>
    
            
    
           
        </div>
        <!-- CONTENIDO DEL SITIO-->
        <div class="information-content">
            <div class="content1">
                <h1><strong> Vienvenido a SRU <br> El mejor software de registro <br>
                    y gestion de cuentas de usuario <br> del mercado.</strong></h1>
                    <img src="https://www.commissionly.io/wp-content/uploads/2021/09/home-4-graphic.png" alt="">
            </div>
           <div class="content2">
            <img src="https://images.squarespace-cdn.com/content/v1/6514746495e8f84a992b289a/299e570e-6f7a-452d-bd5e-515b4be9ee1f/ownership.png" alt="src">
            <h1>  Más seguro, rapido e intuitivo</h1>
           </div>
            <div class="content3">
                <h1> Con nuevos diseños más amigables e interarctivos</h1>
                <img src="https://th.bing.com/th/id/R.39f2b99d7ca42c793239e6464da16073?rik=Sw45yY4em6dRiw&pid=ImgRaw&r=0" alt="">
            </div>
        </div>
        <div class="information-form">
            
            <form action="comunicationServlet" method="POST">
                <h1> Regístrate para acceder a todo lo que tenemos para ti.</h1>

                <input type="submit" name="action"  value="Registrate">
                <h1> ¿Ya eres usuario? Inica sesión con tu cuenta</h1>
                <input type="submit" name="action"  value="Inicia Sesion">
            </form>
            
        </div>
        <div class="information-footer">
            <footer class="footer">
                <form action="comentServlet" method="POST">
                    <input type="text" placeholder="Dejanos un comentario">
                    <input type="submit" name="action" value="Enviar">
                </form>
                <div class="information-link">
                    <a href="#"> <strong>politicas de privacidad</strong></a>
                    <a href="#"> <strong>Terminos y condiciones</strong></a>
                    <a href="#"> <strong>Redes sociales</strong>
                        <i class='bx bxl-facebook-circle'></i> 
                        <i class='bx bxl-instagram'></i>
                        <i class='bx bxl-github'  ></i> </a>
                </div>
            </footer>
           
        </div>
    </div>
    </body>
</html>
