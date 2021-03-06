<%-- 
    Document   : usuario
    Created on : 23-feb-2022, 13:16:47
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
                <h2 >Listado de Usuarios</h2>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/destinos", "root", "");
                  Statement s = conexion.createStatement();
                  ResultSet listado = s.executeQuery("SELECT * FROM usuario");
                %>
                
                <div class="bg-white" >
                    <table class="table">
                    <thead>
                      <tr>
                         <th scope="col">Cod Usuario</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellidos</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Dni</th>
                        <th scope="col">Email</th>
                        <th scope="col">Ciudad</th>
                        <th scope="col">Pais</th>
                        
                      </tr>
                    </thead>

                        <%
                          while (listado.next()) {
                            out.println("<tr class='trListado'><td class='tdListado'>");
                            out.println(listado.getString("codUsuario") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("nomUsuario") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("apeUsuario") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("tlfUsuario") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("dniUsuario") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("emailUsuario") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("ciuUsuario") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("paiUsuario") + "</td>");
                        %>

                        <td >
                            <form method="get" action="modificaUsuario.jsp">
                                <input type="hidden" name="nomUsuario" value="<%=listado.getString("nomUsuario")%>">
                                <input type="hidden" name="apeUsuario" value="<%=listado.getString("apeUsuario")%>">
                                <input type="hidden" name="tlfUsuario" value="<%=listado.getString("tlfusuario")%>">
                                <input type="hidden" name="dniUsuario" value="<%=listado.getString("dniUsuario")%>">
                                <input type="hidden" name="emailUsuario" value="<%=listado.getString("emailUsuario")%>">
                                <input type="hidden" name="ciuUsuario" value="<%=listado.getString("ciuUsuario")%>">
                                <input type="hidden" name="paiUsuario" value="<%=listado.getString("paiUsuario")%>">
                                <button type="submit" class="btn btn-success">Modificar</button>
                                <input type="hidden" name="codUsuario" value="<%=listado.getString("codUsuario")%>"/>                          

                            </form>
                        </td>
                        



                        <td >
                            <form method="get" action="borradoUsuario.jsp">
                                <input type="hidden" name="codUsuario" value="<%=listado.getString("codUsuario")%>"/>
                                <button type="submit" class="btn btn-danger">Borrar</button>
                            </form>
                        </td></tr>
                        <%
                          }
                          conexion.close();
                        %>
                    </table>
                </div>
            </section>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>
