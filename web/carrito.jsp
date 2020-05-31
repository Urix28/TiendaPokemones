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
                    <table class="centered" >
                        <thead>
                            <tr>
                                <th>Pokemon</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                                <th>Imagen</th>
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
                                <td>${car.getDescripcion()}</td>
                                <td><img src="ControladorIMG?id=${car.getIdProducto()}" width="100" height="100"></td>
                                <td>${car.getPrecioCompra()}</td>
                                <td>${car.getCantidad()}</td>
                                <td>${car.getSubTotal()}</td>
                                <td>
                                    <input type="hidden" id="idp" value="${car.getIdProducto()}">
                                    <a href="#" id="btnDelete" class="waves-effect waves-light btn">Eliminar</a>

                                </td>
                                
                            </tr>
                        </c:forEach>
                            
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-8">
                    <div class="card">
                        <div class="card-header">

                        </div>
                        <div class="card-body">
                            
                            <label>Total a Pagar:</label>
                            <input type="text" value="$${totalPagar}" readonly="" class="form-control">
                        </div>

                    </div>
                </div>
            </div>
        </div>
                        
                        <h3>Metodo de pago </h3>

            <div class="row">
              <form class="col s12">
                <div class="row">
                  <div class="input-field col s6">
                    <input  id="first_name" type="text" class="validate">
                    <label for="first_name">Nombre(s)</label>
                  </div>
                  <div class="input-field col s6">
                    <input id="last_name" type="text" class="validate">
                    <label for="last_name">Apellido paterno, Materno</label>
                  </div>
                </div>
               
                <div class="row">
                  <div class="input-field col s12">
                    <input  id="first_name" type="text" class="validate">
                    <label for="first_name">Numero de tarjeta</label>
                  </div>
                </div>   
                <div class="row">
                  <div class="input-field col s12">
                    <input id="email" type="email" class="validate">
                    <label for="email">Email</label>
                  </div>
                </div>

              </form>
            </div>
                        

            <a href="" class="waves-effect waves-light btn">Realizar pago</a>

                        
                        
                        
                        
                        
        
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="js/materialize.min.css"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funciones.js" type="text/javascript"></script>
        <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
    </body>
</html>
