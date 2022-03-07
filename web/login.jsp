<%-- 
    Document   : login
    Created on : 06-mar-2022, 21:53:40
    Author     : gonza
--%>



<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
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
                    HashMap<String, String> login = new HashMap();
                    login.put("admin", "admin");
                    login.put("user", "user");
                    login.put("usuario", "usuario");
                    login.put("veronicagp", "12345");
                    String nombre = request.getParameter("usuario");
                    String pass = request.getParameter("pass");
                    if (login.containsKey(nombre)) {
                      if (login.get(nombre).equals(pass)) {
                        session.setAttribute("nombre", nombre);
                        response.sendRedirect("inicio.jsp");
                      }
                      
                    } else {
                      out.println("<h2 id = 'errorContraseña'>Usuario o contraseña incorrectos</h2>");
                      out.println("<a id = 'btnVolver' href='index.jsp'>Volver</button></a>");
                    }
                  %>
                  <div id="fondoLogin">
                      
                  </div>
            </section>
        </div>
    </body>
</html>