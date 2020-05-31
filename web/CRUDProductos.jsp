<%-- 
    Document   : CRUDProductos
    Created on : 31/05/2020, 12:44:59 PM
    Author     : PC
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Gestion de Productos</title>
        <meta charset="UTF-8">
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

        <div class="container">
            <c:forEach var="p" items="${pokemones}">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activator" src="ControladorIMG?id=${p.getId()}">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4"><h3>${p.getNombres()}</h3><i class="material-icons right">more_vert</i></span>
                        <p><h4>$${p.getPrecio()} PokiCoins</h4></p>
                        <a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="waves-effect waves-light teal accent-4 btn-large"><i class="material-icons left">add_shopping_cart</i>Agregar a carrito</a>
                        <a href="#" class="waves-effect waves-light light-blue lighten-2 btn-large"><i class="material-icons left">attach_money
                            </i>Comprar</a>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">${p.getNombres()}<i class="material-icons right">close</i></span>
                        <p>${p.getDescripcion()}</p>
                    </div>
                </div>
            </c:forEach>

        </div>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="js/materialize.min.css"></script>
    </body>
</html>
