<!<!-- esta pagina; corresponde a la interfaz de la aplicacion a la que el usuario accede
una ves verificado o autenticado su registro o inicio de sesion en el sistema.-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>main page</title>
        
           <link rel="stylesheet" href="Styles/main.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
    <!--  Comienza Encabezado-->
     <header>
        <img id="img" src="IMG/OIP.jpg" alt="SRU">
    <h2 id="h2"><strong>¡vienvenido!</strong></h2>
</header>
    <!--  termina Encabezado-->

    <!--  Comienza menú superior-->
    <nav>
        <ul id="menu">
            <li id="opcion"><a href="#"><i id="icon" class="fa-solid fa-share"></i> Compartir</a></li>
            <li id="opcion"><a href="#"><i id="icon"class="fa-solid fa-box-archive"></i> Repositorio</a></li>
            <li id="opcion"><a href="#"> <i id="icon" class="fa-solid fa-file-export"></i> Exportar</a></li>
            <li id="opcion"><a href="#"><i id="icon" class="fa-solid fa-floppy-disk"></i> Guardar</a></li>
            <li id="opcion"><a href="#"><i id="icon" class="fa-solid fa-circle-user"></i></a></li>
        </ul>
    </nav>
    <!--  termina menú superior-->

   
    <main>
    <!--  Comienza menú lateral-->

        <aside>
            <h2 id="nave"> <a href="#"> <i id="icon2" class="fa-solid fa-bars"></i> <strong>Menú</strong> <i class="fa-solid fa-chevron-down"></i></a></h2>
            <ul id="menulat">
                <li id="servicios"><a href="#"><i id="icon2" class="fa-regular fa-folder"></i> <strong>Mis proyectos</strong></a></li>
                <li id="servicios"> <a href="#"><i id="icon2" class="fa-solid fa-file-circle-plus"></i> <strong>Crear nuevo</strong></a></li>
                <li id="servicios"> <a href="#"><i id="icon2" class="fa-solid fa-heart"></i> <strong>Cambiar a pro </strong></a></li> <br>
                <hr id="hr">
                <div> 
                <li id="servicios"><a href="#"><i id="icon2" class="fa-solid fa-gear"></i> <strong> Ajustes</strong></a></li>
                 </div>
                <li id="servicio"><a href="#"><i id="icon2" class="fa-solid fa-circle-info"></i><strong> Ayuda</strong></a></li>
                <li id="servicio">  <a href="#"> <i id="icon2" class="fa-solid fa-comments"></i><strong> Deja tus comentarios</strong></a></li>
                <li id="servicio">  <a href="#"> <i id="icon2" class="fa-solid fa-right-from-bracket"></i><strong> Salir</strong></a></li>
            </ul>
        </aside>
    <!--  Termina menú lateral-->
    
     <!--  Comienza contenido-->         
            <p id="p1"> <i class="fa-solid fa-file-code"></i> <strong>Proyectos activos</strong> </p>
        <div id="div">
            <p id="p2"><button >
                <p > <strong>Proyecto Z </strong><br>Hace 1h</p>
            </button></p>
            <p id="p3"><button>
                <p > <strong>Proyecto X </strong><br>Hace 3d</p>
            </button>
             </p>
           <p id="p4"> <button>
                 <p> <strong>Proyecto Y </strong><br>Hace 6meses</p>
             </button></p>
            </div>

    <div>
    <p id="p1-2"><button >
        <p > <strong>¿Cómo diseñar mis wigeds con SRU? </strong><br><a href="#">clic aquí <i class="fa-solid fa-arrow-right"></i></a>  </p>
    </button></p>
    <img id="img2" src="https://th.bing.com/th/id/OIP.0lJHSWr7gpiBLS4YoaK66QHaFC?rs=1&pid=ImgDetMain" alt="SRU?">
    <a id="zoom" href="#"><i class="fa-solid fa-magnifying-glass-plus"></i></a>
    <a id="zoom" href="#"><i class="fa-solid fa-magnifying-glass-minus"></i></a>
    </div>
         </main>
    <!--  Termina contenido-->
    </body>
</html>
