<%-- 
    Document   : index
    Created on : 21/04/2020, 07:03:12 PM
    Author     : river
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Acceso</title>
        <meta charset="UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/materialize.min.css">
        <link rel="icon" type="image/x-icon" href="img/pokebola.png">
        <style>
            body{
                background-image: url(img/fondo.jpg);
                background-size: cover;
            }
            .login{
                margin-top: 100px;
                
            }
            .login .card{
                background: rgba(0, 0, 50, .6);
            }
            .login label{
                font-size: 20px;
                color: #ccc;
            }
            .login input{
                font-size: 30px;
                color: #fff;
            }
        </style>
    </head>
    <body>
         <!-- Navbar goes here -->

    <!-- Page Layout here -->
     <nav>
    <div class="nav-wrapper  blue-grey darken-3">
        <a href="Productos.jsp" class="brand-logo"><img src="img/pokebola.png"></a>
      <a href="#!" class="brand-logo center">Tienda de Pokemones</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        

       
      </ul>
    </div>
  </nav>
    <div class="container">
      <div class="row login">
          <div class="col s12 14 offset-14">
              <div class="card">
                  <div class="card-action white-text blue-grey darken-3">
                      <h3 class="brand-logo center">Inicio de Sesión</h3>
                  </div>
                  
                  <div class="card-content ">
                      <div class="form-field">
                          <label for="nombre" >Nombre</label>
                          <input type="text" id="nombre" >
                      </div><br>
                      <div class="form-field">
                          <label for="contra" >Contraseña</label>
                          <input type="password" id="contra" >
                      </div><br>
                      
                      <div class="form-field">
                          <button class="btn waves-effect waves-light" type="submit" name="action">Submit<i class="material-icons right">send</i></button>
                      </div><br>
                      <h4 class="white-text">¿Todavía no tienes cuenta? <a href="crear.html">Haz clic aqui</a></h4>
                  </div>
                  
              </div>
          </div>
              
      </div>
    </div>
        
         <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="js/materialize.min.css"></script>
    </body>
</html>
