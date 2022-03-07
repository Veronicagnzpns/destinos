<%-- 
    Document   : nuevaReserva
    Created on : 03-mar-2022, 19:41:36
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
        <title>reserva</title>
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
                     
                <form method="get" action="guardarReserva.jsp" >
                    <h2 class="tituloFormulario">Nueva Reserva</h2>
                    <div >
                
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/destinos", "root", "");
                  Statement s = conexion.createStatement();
                  request.setCharacterEncoding("UTF-8");
                %>
                
                
         
                        <label>Vuelo</label>
                        <select class="form-control" type="select" name="codVuelo" required>
                            <option value=""></option>
                            <%
                              ResultSet vuelo = s.executeQuery("SELECT codVuelo, nomCompania, ciudaVuelo, paisVuelo, numAsiento  FROM vuelo order by codVuelo");
                              while (vuelo.next()) {
                                String codVuelo = vuelo.getString("codVuelo");
                                out.println("<option value='" + codVuelo + "'> " + codVuelo + "</option>");
                              }
                            %>
                        </select>
                        <br/>
                        <label>Usuario</label>
                        <select class="form-control" type="select" name="codUsuario" required>
                            <option value=""></option>
                            <%
                              ResultSet usuario = s.executeQuery("SELECT codUsuario, nomUsuario, apeUsuario FROM usuario order by codUsuario");
                              while (usuario.next()) {
                                String codUsuario = usuario.getString("codUsuario");
                                String nomUsuario = usuario.getString("nomUsuario");
                                String apeUsuario = usuario.getString("apeUsuario");
                                out.println("<option value='" + codUsuario + "'> " + codUsuario + nomUsuario + " " + apeUsuario + "</option>");
                              }
                            %>
                        </select>
                        <br/>
                        <input class="btn btn-primary shadow p-3 mb-5" type="submit" value="Añadir">
                    </div>
                </form>
                    </div><!-- comment -->
                </div>
            </section>
        </div>
    </body>
</html>