<%-- 
    Document   : usuarioModificado
    Created on : 23-feb-2022, 21:08:33
    Author     : gonza
--%>

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
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/destinos", "root", "");
                  Statement s = conexion.createStatement();
                  request.setCharacterEncoding("UTF-8");
                  String actualizacion = "UPDATE usuario SET "
                          + "nomUsuario='" + request.getParameter("nomUsuario")
                          + "', apeUsuario='" + request.getParameter("apeUsuario")
                          + "', tlfUsuario='" + request.getParameter("tlfUsuario")
                          + "', dniUsuario='" + request.getParameter("dniUsuario")
                          + "', emailUsuario='" + request.getParameter("emailUsuario")
                          + "', ciuUsuario='" + request.getParameter("ciuUsuario")
                          + "', paiUsuario='" + request.getParameter("paiUsuario")
                          + "' WHERE codUsuario=" + Integer.valueOf(request.getParameter("codUsuario"));
                  s.execute(actualizacion);
                  conexion.close();
                %>
                <h2 >Usuario modificado correctamente</h2>
                <br>
                <span><a class="btn btn-success shadow p-3 mb-5" href="nuevoUsuario.jsp" role="button">Nuevo Usuario</a></span>
                <span><a class="btn btn-danger shadow p-3 mb-5" href="usuario.jsp" role="button">Lista Usuarios</a></span>

            </section>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
