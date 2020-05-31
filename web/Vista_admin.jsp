<%-- 
    Document   : Vista_admin
    Created on : 31/05/2020, 04:21:26 PM
    Author     : river
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page session="true" %>
<%
String usuario = "";
HttpSession sesionOk = request.getSession();
if (sesionOk.getAttribute("privilegio") == String.valueOf(0) || sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="index.jsp">
<jsp:param name="error" value="Es
obligatorio identificarse"/>
</jsp:forward>
<%
} else {
usuario = (String)sesionOk.getAttribute("usuario");
}
%>
<html>
    <head>
        <title>Vista Administrador</title>
         
        <meta charset="UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/materialize.min.css">
        <link rel="icon" type="image/x-icon" href="img/pokebola.png">
        <link rel="icon" type="image/x-icon" href="img/User_edit.jpg">
        <link rel="icon" type="image/x-icon" href="img/Agrega_producto.jpg"> 
        <script src="sweetalert2.all.min.js"></script>
    </head>
    <body>
        
                <ul id="dropdown1" class="dropdown-content">


            <li class="divider"></li>
            <li><a href="Cerrar">Cerrar Sesión</a></li>
        </ul>
        <nav>
            <div class="nav-wrapper  blue-grey darken-3">
                <a  class="brand-logo"><img src="img/pokebola.png"></a>
                <a  class="brand-logo center">Tienda de Pokemones</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">


                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Opciones<i class="material-icons right">arrow_drop_down</i></a></li>
                    <script>
                                    $(document).ready(function () {
                            $(".dropdown-trigger").dropdown();
                        });
                    </script>

                </ul>
            </div>
        </nav>

        <div class="container mt-4">

            <div class="row">
                <div class="col-sm-8">
                    <table class="centered" >
                        <thead>
                            <tr>
                                <th><h3>Gestion de usuarios</h3></th>
                                <th><h3>Gestion de productos</h3></th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td><a  href="CRUDUsuarios.jsp"><img src="data:image/png;base64,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"></a></td>
                                <td><a  href="Controlador?accion=GestionarP"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReyRNc0yb_-CEH4FpSKY9XRmSrGTE1sHA5mJIhPru_b4cvm7gx&usqp=CAU"></a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <script>
            Swal.fire({
  title: 'Haz clic en la imagen dependiendo lo que quieras gestionar',
  showClass: {
    popup: 'animate__animated animate__fadeInDown'
  },
  hideClass: {
    popup: 'animate__animated animate__fadeOutUp'
  }
})
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="js/materialize.min.css"></script>
    </body>
</html>