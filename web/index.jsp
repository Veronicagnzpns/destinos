<%-- 
    Document   : INDEX
    Created on : 23-feb-2022, 12:22:26
    Author     : gonza
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>vuelo</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="./style/style.css">
    </head>

    <body>
       
        <div id="wrapper" class="container bg-fondo2">
             
            <header  class="shadow p-3 mb-5 bg-body rounded text-center">
                <h1 >HAZ TUS RESERVAS</h1>
                <p >Destinos.com</p>
            </header>

             
            

            <section  >
                <div class=" col-xs-12 col-md-7 col-lg-6 container-fluid text-light border-bottom">
                <div class="clearfix">
                     
              
                    <form method="get" action="login.jsp" >
                        <h2 >Login</h2>
                        <div >

                            <label>Usuario</label>
                            <input type="text" name="usuario" class="form-control" required/><br/>
                            <label>Contraseña</label>
                            <input  class="form-control" type="password" name="pass" required/><br/>
                            <input class="btn btn-primary shadow p-3 mb-5" type="submit" value="Entrar">
                        </div>
                    </form>
                </div>
                </div>
            </section>
        </div>
    </body>
</html>