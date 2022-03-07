<%-- 
    Document   : nuevoUsuario
    Created on : 23-feb-2022, 13:22:32
    Author     : gonza
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>usuario</title>
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
                <div class="clearfix">
                     
                <form method="get" action="guardaUsuarios.jsp" >
                    <h2 class="tituloFormulario">Añadir nuevo cliente</h2>
                    <div >
                        
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" name="nomUsuario" required><br/>
                        <label>Apellidos</label>
                        <input type="text" class="form-control" name="apeUsuario" required><br/>
                        <label>Teléfono</label>
                        <input type="text" class="form-control" name="tlfUsuario" maxlength="9" required><br/>
                        <label>DNI</label>
                        <input type="text" class="form-control"  maxlength="9" name="dniUsuario" required><br/>
                        <label>Email</label>
                        <input type="text" class="form-control"  name="emailUsuario" required><br/>
                        <label>Ciudad</label>
                       <input type="text" class="form-control"  name="ciuUsuario" required><br/>
                        <label>País</label>
                        <input type="text" class="form-control"  name="paiUsuario" required> <br/>
                        
                         <input class="btn btn-primary shadow p-3 mb-5" type="submit" value="Añadir">
                    </div>
                </form>
                    </div>
               </div>
               
            </section>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>