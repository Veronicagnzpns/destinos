<%-- 
    Document   : modificarReserva
    Created on : 23-feb-2022, 23:09:27
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
        <link href="https://fonts.googleapis.com/css?family=Faster+One" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Listado reservas - Reserva tu hotel</title>
    </head>

    <body>
        <div id="wrapper">
            <header>
                <h1 id="rotulo">HAZ TUS RESERVAS</h1>
                <p id="web">ReservaHoteles.com</p>
            </header>
            <nav>
                <span><a href="inicio.jsp">Página de Inicio</a></span>
                <span><a href="confirmacionSalir.jsp">Cerrar Sesión</a></span>
            </nav>
            <section>
                <h2 class="tituloListado">Listado de reservas</h2>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();
                  ResultSet listado = s.executeQuery("SELECT reservaID, nombreCliente, apellidosCliente, telefonoCliente, nombreHotel FROM reserva INNER JOIN cliente ON reserva.clienteID = cliente.clienteID INNER JOIN hotel ON reserva.hotelID = hotel.hotelID" );
                %>
                <div id="estiloTablaReservas">
                    <table class="tableListado">
                        <thead class="theadListado">
                            <tr class="trListado">
                                <th class="thListado">Nº de Reserva</th><th class="thListado">Nombre</th><th class="thListado">Apellidos</th><th class="thListado">Teléfono contacto</th><th class="thListado">Nombre Hotel</th><th class="thListado"></th>
                            </tr>
                        </thead>

                        <%
                          while (listado.next()) {
                            out.println("<tr class='trListado'><td class='tdListado'>");
                            out.println(listado.getString("reservaID") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("nombreCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("apellidosCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("telefonoCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("nombreHotel") + "</td>");
                        %>
                        
                        <td class="tdListado">
                            <form method="get" action="confirmacionBorrado.jsp">
                                <input type="hidden" name="reservaID" value="<%=listado.getString("reservaID")%>"/>
                                <button type="submit" class="botonBorrar">Cancelar</button>
                            </form>
                        </td></tr>
                        <%
                          }
                          conexion.close();
                        %>
                    </table>
                </div>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
