<%-- 
    Document   : nuevoVuelo
    Created on : 23-feb-2022, 13:22:19
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
        <link rel="stylesheet" type="text/css" href="./style/style.css">
        <title>Nuevo Usuario - Reserva tu vuelo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>

    <body>
        <div id="wrapper" class="container-lg bg-fondo2">
            <header>
                <h1>HAZ TUS RESERVAS</h1>
            </header>
            <nav>
                <span><a class="btn btn-warning shadow p-3 mb-5" href="index.jsp" role="button">INICIO</a></span>
                <span><a class="btn btn-warning shadow p-3 mb-5" href="salir.jsp" role="button">SALIR</a></span>
            </nav>
            <section>
               
               <div class=" col-xs-12 col-md-7 col-lg-6 container-fluid text-light border-bottom">
                <div class="clearfix">
                     
                <form method="get" action="guardarVuelo.jsp" >
                    <h2 class="tituloFormulario">Añadir nuevo Vuelo</h2>
                    <div >
                        <label for="nombre" class="form-label">codigo</label>
                        <input type="number" class="form-control" name="codVuelo" required><br/>
                        <label for="nombre" class="form-label">Nombre Compañia</label>
                        <input type="text" class="form-control" name="nomCompania" required><br/>
                        <label>Ciudad</label>
                        <input type="text" class="form-control" name="ciudaVuelo" required><br/>
                        <label>Pais</label>
                        <input type="text" class="form-control"  name="paisVuelo" required><br/>
                        <label>Asiento</label>
                        <input type="text" class="form-control"  name="numAsiento" required><br/>
                        
                        
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