<%-- 
    Document   : modificaUsuario
    Created on : 23-feb-2022, 20:36:48
    Author     : gonza
--%>

<%@page import="java.util.ArrayList"%>
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
                <% request.setCharacterEncoding("UTF-8");%>
                <div>
                    <form method="get" action="usuarioModificado.jsp" class="formulario">
                    <h2 class="text-center">Modificar Usuario</h2>
                    <div class=" col-xs-12 col-md-7 col-lg-6 container-fluid text-light border-bottom">
                        <div class="clearfix">
                      
                        <label >Nombre</label>
                        <input type="text" class="form-control" name="nomUsuario" value="<%= request.getParameter("nomUsuario") %>"><br/>
                        <label>Apellidos</label>
                        <input type="text" class="form-control" name="apeUsuario" value="<%= request.getParameter("apeUsuario") %>"><br/>
                        <label>Teléfono</label>
                        <input type="text" class="form-control" name="tlfUsuario" maxlength="9" value="<%= request.getParameter("tlfUsuario") %>"><br/>
                        <label>DNI</label>
                        <input type="text" class="form-control"  maxlength="9" name="dniUsuario" value="<%= request.getParameter("dniUsuario") %>"><br/>
                        <label>Email</label>
                        <input type="text" class="form-control"  name="emailUsuario" value="<%= request.getParameter("emailUsuario") %>"><br/>
                        <label>Ciudad</label>
                       <input type="text" class="form-control"  name="ciuUsuario" value="<%= request.getParameter("ciuUsuario") %>"><br/>
                        <label>País</label>
                        <input type="text" class="form-control"  name="paiUsuario" value="<%= request.getParameter("paiUsuario") %>"> <br/>
                        
                         <input class="btn btn-primary shadow p-3 mb-5" type="submit"  value="Modificar">
                         <input type="hidden" name="codUsuario" value="<%=request.getParameter("codUsuario")%>"/>
                    </div>
                    </div>
                </form>
                        
                        
                        
                    </div>
                </form>
                </div>
            </section>
        </div>
    </body>
</html>
