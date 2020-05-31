<%-- 
    Document   : CRUDUsuarios
    Created on : 31/05/2020, 12:43:53 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de usuarios</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/materialize.min.css">
        <link rel="icon" type="image/x-icon" href="img/pokebola.png">
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="js/materialize.min.css"></script>
    </body>
</html>
