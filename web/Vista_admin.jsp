<%-- 
    Document   : Vista_admin
    Created on : 31/05/2020, 12:50:51 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    </head>
    <body>
        
                <ul id="dropdown1" class="dropdown-content">


            <li class="divider"></li>
            <li><a href="#!">Cerrar Sesión</a></li>
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
                                <th>Gestion de usuarios</th>
                                <th>Gestion de productos</th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td><a href="CRUDUsuarios.jsp"><img src="img/User_edit.jpg"></a></td>
                                <td><a href="CRUDProductos.jsp"><img src="img/Agrega_producto.jpg"></a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="js/materialize.min.css"></script>
    </body>
</html>
