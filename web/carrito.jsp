<%-- 
    Document   : carrito
    Created on : 22/04/2020, 11:14:19 AM
    Author     : river
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Carrito</title>
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
           
          <li><a href="Controlador?accion=inicio">Comprar más pokemones</a></li>
          <li><a href="Controlador?accion=Inicio">Inicio</a></li>
          <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Opciones<i class="material-icons right">arrow_drop_down</i></a></li>
<script>
                $(document).ready(function(){
                  $(".dropdown-trigger").dropdown();  
                });
 
        </script>
       
      </ul>
    </div>
  </nav>
        <div class="container mt-4">
            <h3>Carrito</h3>
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Pokemon</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>Subtotal</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="car" items="${carrito}">
                            <tr>
                                <td>${car.getItem()}</td>
                                <td>${car.getNombres()}</td>
                                <td>${car.getDescripcion()}
                                    <img src="ControladorIMG?id=${car.getIdProducto()}" width="100" height="100">
                                </td>
                                <td>${car.getPrecioCompra()}</td>
                                <td>${car.getCantidad()}</td>
                                <td>${car.getSubTotal()}</td>
                                <td>
                                    <a href="" class="waves-effect waves-light btn">Eliminar</a>
                                    <a href="" class="waves-effect waves-light btn">Editar</a>
                                </td>
                                
                            </tr>
                        </c:forEach>
                            
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-8">
                    <div class="card">
                        <div class="card-header">
                            <h3>Comprar</h3>
                        </div>
                        <div class="card-body">
                            
                            <label>Total a Pagar:</label>
                            <input type="text" value="$${totalPagar}" readonly="" class="form-control">
                        </div>
                        <div class="card-footer">
                            <a href="" class="waves-effect waves-light btn">Realizar pago</a>
                            <a href="" class="waves-effect waves-light btn">Generar Compra</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
          <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="js/materialize.min.css"></script>
    </body>
</html>
