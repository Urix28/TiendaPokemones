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
        <script src="sweetalert2.all.min.js"></script>
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
                  <form method="post" id="Login">
                  <div class="card-content ">
                      <div class="form-field">
                          <label for="nombre" >Nombre</label>
                          <input type="text" id="nombre" name="Nombre">
                      </div><br>
                      <div class="form-field">
                          <label for="contra" >Contraseña</label>
                          <input type="password" id="contra" name="Clave">
                      </div><br>
                      
                      <div class="form-field">
                          <button class="btn waves-effect waves-light" id="send" type="submit" >Submit<i class="material-icons right">send</i></button>
                      </div><br>
                      <h4 class="white-text">¿Todavía no tienes cuenta? <a href="Registro.jsp">Haz clic aqui</a></h4>
                  </div>
                    </form>
                  <script>
                  document.getElementById('send').addEventListener('click', (e) => {
                         e.preventDefault()
                         var  x=0;
                        // var patron = /^[a-zA-Z ]*$/g;
                        // var patron2 = /^[a-zA-Z ]*$/g;
                         
                         Nombre = document.getElementById('nombre').value;
                       
                         Contraseña = document.getElementById('contra').value;
                         
                        
                  
                        
                         formulario = document.getElementById('Login');
                        if(Nombre == "" || Contraseña == ""){
                                    
                                    Swal.fire({
                                    icon: 'error',
                                    title: 'Oops...',
                                    text: 'Falta llenar campos'
  
                                    })
                           
                            x++;
                         } 
                        
                         
                         if(x == 0){
                            
                             Swal.fire({
                                    title: 'Verificando Acesso',
                                    width: 600,
                                    padding: '3em',
                                    background: '#fff',
                                    backdrop: `
                                      rgba(0,0,123,0.4)
                                      url(https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8d6cfe44-5fe9-4aaf-9cde-700622aa927d/dccwm24-630b8838-739d-419f-9c32-68bf84d971ab.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvOGQ2Y2ZlNDQtNWZlOS00YWFmLTljZGUtNzAwNjIyYWE5MjdkXC9kY2N3bTI0LTYzMGI4ODM4LTczOWQtNDE5Zi05YzMyLTY4YmY4NGQ5NzFhYi5naWYifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.Y6T1USAv3_GbDrK2PthYqHOGKWDWL8ALGZgLvgO0tPQ)
                                      left top
                                      no-repeat
                                    `
                                  })
                             setTimeout(function(){ formulario.setAttribute('action', 'VerificarUsuario')
                             return document.getElementById('Login').submit();   }, 3000);
                             
                              
                         }
                         

                              

}) 
                        
                    </script>
                  
              </div>
          </div>
              
      </div>
    </div>
        
         <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="js/materialize.min.css"></script>


    </body>
</html>
