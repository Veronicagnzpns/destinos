<%-- 
    Document   : reservas
    Created on : 05-mar-2022, 14:10:45
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
        <title>reservas</title>
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
                <h2 class="tituloListado">Listado de reservas</h2>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/destinos", "root", "");
                  Statement s = conexion.createStatement();
                  ResultSet listado = s.executeQuery("SELECT codReserva, nomUsuario, apeUsuario, tlfUsuario, nomCompania, ciudaVuelo FROM reserva INNER JOIN usuario ON reserva.codUsuario = usuario.codUsuario INNER JOIN vuelo ON reserva.codVuelo = vuelo.codVuelo" );
                %>
                <div class="bg-white" >
                    <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">Codigo Reserva</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Nombre Compañia</th>
                        <th scope="col">Ciudad Vuelo</th>
                        
                      </tr>
                    </thead>

                        <%
                          while (listado.next()) {
                            out.println("<tr class='trListado'><td class='tdListado'>");
                            out.println(listado.getString("codReserva") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("nomUsuario") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("apeUsuario") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("tlfUsuario") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("nomCompania") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("ciudaVuelo") + "</td>");
                        %>
                        
                        <td class="tdListado">
                            <form method="get" action="borradoReserva.jsp">
                                <input type="hidden" name="codReserva" value="<%=listado.getString("codReserva")%>"/>
                                <button type="submit" class="btn btn-danger">Cancelar</button>
                                
                            </form>
                        </td></tr>
                        <%
                          }
                          conexion.close();
                        %>
                    </table>
                </div>
            </section>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
