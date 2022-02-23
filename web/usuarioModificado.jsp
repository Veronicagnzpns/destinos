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
        <title>Listado Usuarios</title>
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
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/destinos", "root", "");
                  Statement s = conexion.createStatement();
                  request.setCharacterEncoding("UTF-8");
                  String actualizacion = "UPDATE usuario SET "
                          + "nomUsuario='" + request.getParameter("nomUsuario")
                          + "', apeUsuario='" + request.getParameter("apeUsuario")
                          + "', tlfUsuario='" + request.getParameter("tlnUsuario")
                          + "', dniUsuario='" + request.getParameter("dniUsuario")
                          + "', emailUsuario='" + request.getParameter("emailUsuario")
                          + "', ciuUsuario='" + request.getParameter("ciuUsuario")
                          + "', paiUsuario='" + request.getParameter("paiUsuario")
                          + "' WHERE codUsuario=" + Integer.valueOf(request.getParameter("codUsuario"));
                  s.execute(actualizacion);
                  conexion.close();
                %>
                <br>
                <a class="hacerloDeNuevo" href="usuario.jsp">Hacer otra modificación</a>
                <a class="aceptarNuevo" href="usuario.jsp">Aceptar</a>

            </section>
        </div><!-- Cierra el wrapper -->
    </body>
</html>