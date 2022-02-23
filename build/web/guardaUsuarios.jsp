<%-- 
    Document   : guardaUsuarios
    Created on : 23-feb-2022, 19:29:24
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
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Add cliente</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
            <section>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/destinos", "root", "");
                  Statement s = conexion.createStatement();
                  request.setCharacterEncoding("UTF-8");
                  // Comprueba la existencia del número de socio introducido
                  String consultaNumSocio = "SELECT * FROM usuario WHERE dniUsuario LIKE '" + request.getParameter("dniUsuario") + "'";
                  ResultSet numeroDeSocios = s.executeQuery(consultaNumSocio);
                  numeroDeSocios.last();
                  if (numeroDeSocios.getRow() != 0) {
                    response.sendRedirect("index.jsp");
                  } else {
                    String insercion = "INSERT INTO usuario (codUsuario, nomUsuario, apeUsuario, tlfUsuario, dniUsuario, emailUsuario, ciuUsuario, paiUsuario) VALUES ("
                            +Integer.valueOf(request.getParameter("codUsuario"))
                            + ", '" + request.getParameter("nomUsuario")
                            + "', '" + request.getParameter("apeUsuario")
                            + "', '" + request.getParameter("tlfUsuario")
                            + "', '" + request.getParameter("dniUsuario") 
                            + "', '" + request.getParameter("emailUsuario")
                            + "', '" + request.getParameter("ciuUsuario") 
                            + "', '" + request.getParameter("paiUsuario")+ "')";
                    s.execute(insercion);
                  }
                  conexion.close();
                %>
                
                <h2 >El cliente se ha añadido correctamente</h2>
                <br>
                <span><a class="btn btn-success shadow p-3 mb-5" href="nuevoUsuario.jsp" role="button">Nuevo Usuario</a></span>
                <span><a class="btn btn-danger shadow p-3 mb-5" href="usuario.jsp" role="button">Lista Usuarios</a></span>
                
            </section>

        </div>
    </body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>