<%-- 
    Document   : inicio
    Created on : 06-mar-2022, 22:10:23
    Author     : gonza
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>inicio</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="./style/style.css">
    </head>

    <body>
       
        <div id="wrapper" class="container bg-fondo2">
             <nav class="navbar navbar-expand-lg navbar-light bg-nav sticky-top zindex-sticky">
            <div class="container-fluid">
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="inicio.jsp">Inicio</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Login</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="usuario.jsp">Usuarios</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="vuelo.jsp">Vuelos</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="reservas.jsp">Reservas</a>
                  </li>
                </ul>
              </div>
            </div>
                 
             </nav>
            <header  class="shadow p-3 mb-5 bg-body rounded text-center">
                <h1 >HAZ TUS RESERVAS</h1>
                <p >Destinos.com</p>
            </header>

             
            

            <section  >
                
                 <div class=" col-xs-12 col-md-7 col-lg-6 container-fluid text-light border-bottom">
                <div class="clearfix row">
                

                <table>
                    <tr >
                        <td>
                            <a href="nuevoUsuario.jsp" role="button">
                                <img class="" src="images/usuario.png"  width="100" class="my-4">
                            </a>
                        </td>
                        <td>
                            <a href="nuevoVuelo.jsp">
                                <img src="images/vuelo.png" width="100" class="my-4">
                            </a>
                        </td>
                         <td>
                            <a href="nuevaReserva.jsp">
                                <img src="images/reserva.png" width="100" class="my-4">
                            </a>
                        </td>
                        
                    </tr>
                    <tr>
                        <td ><a class="btn btn-success shadow p-3 mb-5" href="nuevoUsuario.jsp" role="button">Nuevo Usuario</a></td>
                        <td ><a class="btn btn-success shadow p-3 mb-5" href="nuevoVuelo.jsp" role="button">Nuevo vuelo</a></td>
                         <td ><a class="btn btn-success shadow p-3 mb-5" href="nuevaReserva.jsp" role="button">Nueva Reserva</a></td>
                        
                    </tr>
                    <tr >
                        <td>
                            <a href="usuario.jsp">
                                 <img class="" src="images/usuario.png"  width="100" class="my-4">
                            </a>
                        </td>
                        <td >
                            <a href="vuelo.jsp">
                                <img src="images/vuelo.png" width="100" class="my-4">
                            </a>
                        </td>
                        <td >
                            <a href="reserva.jsp">
                                <img src="images/reserva.png" width="100" class="my-4">
                            </a>
                        </td>
                        
                    </tr>
                    <tr >
                        <td ><a class="btn btn-primary shadow p-3 mb-5" href="usuario.jsp" role="button">Lista Usuario</a></td>
                        <td ><a class="btn btn-primary shadow p-3 mb-5" href="vuelo.jsp" role="button">Lista vuelo</a></td>
                        <td ><a class="btn btn-primary shadow p-3 mb-5" href="reservas.jsp" role="button">Lista reservas</a></td>
                       
                    </tr>
                </table>
                </div>
            </div>
                

            </section>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>

