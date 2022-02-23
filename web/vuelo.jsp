<%-- 
    Document   : vuelo
    Created on : 23-feb-2022, 13:16:55
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
                <h2 >Listado de Vuelos</h2>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/destinos", "root", "");
                  Statement s = conexion.createStatement();
                  ResultSet listado = s.executeQuery("SELECT * FROM vuelo");
                %>
                
                <div class="bg-white" >
                    <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">Nombre Compañia</th>
                        <th scope="col">Ciudad</th>
                        <th scope="col">Pais</th>
                        <th scope="col">Numero de Asiento</th>
                        
                      </tr>
                    </thead>

                        <%
                          while (listado.next()) {
                            out.println("<tr class='trListado'><td class='tdListado'>");
                            out.println(listado.getString("nomCompania") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("ciudaVuelo") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("paisVuelo") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("numAsiento") + "</td>");
                        %>

                        <td >
                            <form method="get" action="modificarVuelo.jsp">
                                <input type="hidden" name="nomCompania" value="<%=listado.getString("nomCompania")%>">
                                <input type="hidden" name="ciudaVuelo" value="<%=listado.getString("ciudaVuelo")%>">
                                <input type="hidden" name="paisVuelo" value="<%=listado.getString("paisVuelo")%>">
                                <input type="hidden" name="numAsiento" value="<%=listado.getString("numAsiento")%>">
                                <button type="submit" class="btn btn-success">Modificar</button>
                                <input type="hidden" name="codVuelo" value="<%=listado.getString("codVuelo")%>"/>                          

                            </form>
                        </td>
                        



                        <td >
                            <form method="get" action="borrarVuelo.jsp">
                                <input type="hidden" name="codVuelo" value="<%=listado.getString("codVuelo")%>"/>
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
