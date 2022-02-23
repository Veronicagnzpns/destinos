<%-- 
    Document   : INDEX
    Created on : 23-feb-2022, 12:22:26
    Author     : gonza
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title class>Página principal - Reserva Hoteles</title>
        <meta charset="utf-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="./style/style.css">
    </head>
    <body>
        <div id="wrapper" class="container-lg bg-fondo2">
            <header  class="shadow p-3 mb-5 bg-body rounded text-center">
                <h1 >HAZ TUS RESERVAS</h1>
                <p >Destinos.com</p>
            </header>

            <nav>
                <span><a class="btn btn-warning shadow p-3 mb-5" href="index.jsp" role="button">INICIO</a></span>
                <span><a class="btn btn-warning shadow p-3 mb-5" href="salir.jsp" role="button">SALIR</a></span>
            </nav>

            <section  >
                
                <div class="row d-flex align-items-center justify-content-center">
                <div class="col-xs-12 col-md-7 col-lg-6 vh-100 mx-auto row">
                

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
                        
                    </tr>
                    <tr>
                        <td ><a class="btn btn-success shadow p-3 mb-5" href="nuevoUsuario.jsp" role="button">Nuevo Usuario</a></td>
                        <td ><a class="btn btn-success shadow p-3 mb-5" href="nuevoVuelo.jsp" role="button">Nuevo vuelo</a></td>
                        
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
                        
                    </tr>
                    <tr >
                        <td ><a class="btn btn-primary shadow p-3 mb-5" href="usuario.jsp" role="button">Lista Usuario</a></td>
                        <td ><a class="btn btn-primary shadow p-3 mb-5" href="vuelo.jsp" role="button">Lista vuelo</a></td>
                        
                       
                    </tr>
                </table>
                </div>
            </div>
                

            </section>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>