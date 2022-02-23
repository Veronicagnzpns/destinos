<%-- 
    Document   : modificarVuelo
    Created on : 23-feb-2022, 21:51:00
    Author     : gonza
--%>

<%@page import="java.util.ArrayList"%>
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
                <% request.setCharacterEncoding("UTF-8");%>
                <div>
                    <form method="post" action="vueloModificado.jsp" class="formulario">
                    <h2 class="text-center">Modificar Vuelo</h2>
                    <div class=" col-xs-12 col-md-7 col-lg-6 container-fluid text-light border-bottom">
                        <div class="clearfix">
                      
                        <label>codigo</label>
                        <input type="number" class="form-control" name="codVuelo" value="<%= request.getParameter("codVuelo") %>"><br/>
                        <label >Nombre Compañia</label>
                        <input type="text" class="form-control" name="nomCompania" value="<%= request.getParameter("nomCompania") %>"><br/>
                        <label>Ciudad Destino</label>
                        <input type="text" class="form-control" name="ciudaVuelo" value="<%= request.getParameter("ciudaVuelo") %>"><br/>
                        <label>Pais Destino</label>
                        <input type="text" class="form-control" name="paisVuelo" maxlength="9" value="<%= request.getParameter("paisVuelo") %>"><br/>
                         <label>Asiento</label>
                        <input type="text" class="form-control" name="numAsiento" maxlength="9" value="<%= request.getParameter("numAsiento") %>"><br/>
                        
                         <input class="btn btn-primary shadow p-3 mb-5" type="submit"  value="Modificar">
                         <input type="hidden" name="codVuelo" value="<%=request.getParameter("codVuelo")%>"/>
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
