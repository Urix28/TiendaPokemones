<%-- 
    Document   : Registro
    Created on : 21/04/2020, 07:03:51 PM
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
        <title>Registro</title>
        <meta charset="UTF-8">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
        <script src="sweetalert2.all.min.js"></script>
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
                margin-top: 20px;
                
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
                
            }
            .n{
                color: #fff;
            }
            .datepicker{
                color: white;
            }
            
        </style>
    </head>
    <body>
         <!-- Navbar goes here -->

    <!-- Page Layout here -->
     <nav>
    <div class="nav-wrapper  blue-grey darken-3">
        <a href="index.html" class="brand-logo"><img src="img/pokebola.png"></a>
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
                      <h3 class="brand-logo center">Registro</h3>
                  </div>
                  <form method="post" id="Registro">
                  <div class="card-content ">
                      <div class="form-field">
                          <label for="nombre" >Nombre</label>
                          <input type="text" id="nombre" class="n" name="Nombre" required>
                      </div><br>
                      <div class="form-field">
                          <label for="appat" >Apellido Paterno</label>
                          <input type="text" id="appat" class="n" name="Appat" required>
                      </div><br>
                      <div class="form-field">
                          <label for="apmat" >Apellido Materno</label >
                          <input type="text" id="apmat" class="n" name="Apmat" required>
                      </div><br>
                      <div class="form-field">
                          <label for="curp" >CURP</label>
                          <input type="text" id="curp" class="n" name="Curp" required>
                      </div><br>
                      <div class="form-field">
                          <label for="fecha" class="">Fecha de Nacimiento</label>
                          <input placeholder="Ingresa tu fecha de nacimiento (Haz clic)" type="text" name="fecha"  class="datepicker" id="fecha" required>
                            <script>
                                        $(document).ready(function(){
                                            $('.datepicker').datepicker({
                                               format: 'yyyy-mm-dd',
                                               setDefaultDate: false,
                                               minDate: new Date(1930,11,17),
                                               maxDate: new Date()
                                               
                                               
                                            });
                                        });
                
                            </script>
                      </div><br>
                      <div class="form-field">
                          <label for="direccion" >Dirección</label>
                          <input type="text" id="direccion" class="n" name="Direccion" required>
                      </div><br>
                      <div class="form-field">
                          <label for="cp" >Codigo postal</label>
                          <input type="text" id="cp" class="n" name="Cp" required>
                      </div><br>
                      <div class="form-field">
                          <label for="tele" >Telefono</label>
                          <input type="text" id="tele" class="n" name="Telefono" required>
                      </div><br>
                      <div class="form-field">
                          <label for="contra" >Contraseña</label>
                          <input type="password" id="contra" class="n" name="Clave" required>
                      </div><br>
                      
                      <div class="form-field">
                          
                          <button class="btn-large green accent-3 waves-effect waves-light" type="submit" id="send" name="action">Registrar
                          <i class="material-icons right">send</i> 
                         
                            </button>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <a href="index.jsp" class="waves-effect waves-light btn-large #90caf9 blue lighten-3">Regresar</a>
                      </div><br>
                      
                  </div>
                      </form>
                  
              </div>
          </div>
              
      </div>
    </div>
    <script>
                       document.getElementById('send').addEventListener('click', (e) => {
                         e.preventDefault()
                         var  x=0;
                        // var patron = /^[a-zA-Z ]*$/g;
                        // var patron2 = /^[a-zA-Z ]*$/g;
                         
                         Nombre = document.getElementById('nombre').value;
                         Appat = document.getElementById('appat').vale;
                         Apmat = document.getElementById('apmat').vale;
                         Curp = document.getElementById('curp').value;
                         Fecha = document.getElementById('fecha').value;
                         Direccion = document.getElementById('direccion').vale;
                         CodigoPostal = document.getElementById('cp').value;
                         Telefono = document.getElementById('tele').value;
                         Contraseña = document.getElementById('contra').value;
                         
                         //ValidaNombre = patron.test(Nombre);
                         //ValidaAppat = patron.test(Appat);
                         
                         function RevisaPatron(Cadena){
                                let patron = /^[a-zA-Z ]*$/g;
                                Valida = patron.test(Cadena);
                                return Valida;

                         }
                         let patronCurp= /^([A-Z][AEIOUX][A-Z]{2}\d{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\d|3[01])[HM](?:AS|B[CS]|C[CLMSH]|D[FG]|G[TR]|HG|JC|M[CNS]|N[ETL]|OC|PL|Q[TR]|S[PLR]|T[CSL]|VZ|YN|ZS)[B-DF-HJ-NP-TV-Z]{3}[A-Z\d])(\d)$/g;
                         alert(Curp);
                         ValidaCurp = patronCurp.test(Curp)
                         alert(ValidaCurp);
                         
                         let patronTelefono = /^(\(\+?\d{2,3}\)[\*|\s|\-|\.]?(([\d][\*|\s|\-|\.]?){6})(([\d][\s|\-|\.]?){2})?|(\+?[\d][\s|\-|\.]?){8}(([\d][\s|\-|\.]?){2}(([\d][\s|\-|\.]?){2})?)?)$/;
                         ValidaTelefono = patronTelefono.test(Telefono)
                         let patronFecha = /^\d{4}([-])(0?[1-9]|1[1-2])\1(3[01]|[12][0-9]|0?[1-9])$/g;
                         ValidaFecha = patronFecha.test(Fecha)
                        
                        // alert("Nombre: "+nombre+" Tipo: "+typeof(nombre)+" El Test: "+patron.test(nombre)); 
                         
                         
                         //ValidaCiudad = patron2.test(ciudad)
                        // alert("Ciudad: "+ciudad+" Tipo: "+typeof(nombre)+" El Test: "+ValidaCiudad);
                         formulario = document.getElementById('Registro');
                        if(Nombre == "" || Appat == "" || Apmat == "" || Curp == "" || Fecha == "" || Direccion == "" || CodigoPostal == "" || Telefono == "" || Contraseña == ""){
                                    
                                    Swal.fire({
                                    icon: 'error',
                                    title: 'Oops...',
                                    text: 'Falta llenar campos'
  
                                    })
                           
                            x++;
                         } 
                         alert("Nombre: "+RevisaPatron(Nombre)+" Appat: "+RevisaPatron(Appat)+" Appmat: "+RevisaPatron(Apmat)+" Direccion: "+RevisaPatron(Direccion))
                        if(RevisaPatron(Nombre) === false || RevisaPatron(Appat) === false || RevisaPatron(Apmat) === false || RevisaPatron(Direccion) === false){
                             Swal.fire({
                                    icon: 'error',
                                    title: 'Oops...',
                                    text: 'Los campos Nombre, Apellido Paterno, Apellido Materno y Direccion solo puden tener letras'
  
                                    })
                             
                             x++;
                             
                         }
                         if(ValidaCurp === false){
                             Swal.fire({
                                    icon: 'error',
                                    title: 'Oops...',
                                    text: 'Curp no valido'
  
                                    })
                             
                             x++; 
                         }
                         if(ValidaTelefono === false){
                             Swal.fire({
                                    icon: 'error',
                                    title: 'Oops...',
                                    text: 'El telefono no es valido'
  
                                    })
                             
                             x++; 
                         }
                         if(ValidaFecha === false){
                            Swal.fire({
                                    icon: 'error',
                                    title: 'Oops...',
                                    text: 'La fecha no es valida'
  
                                    })
                             
                             x++; 
                         }
                         if(CodigoPostal.length !== 5){
                             Swal.fire({
                                    icon: 'error',
                                    title: 'Oops...',
                                    text: 'El codigo postal debe tener 5 digitos'
  
                                    })
                             x++;
                         }
                         alert(CodigoPostal)
                         if(isNaN(parseInt(CodigoPostal))){
                                    
                                    Swal.fire({
                                    icon: 'error',
                                    title: 'Oops...',
                                    text: 'El CodigoPostal solo puede tener valores numericos'
  
                                    })
                         
                            x++;
                         }
                         
                         
                         if(x == 0){
                            
                             Swal.fire(
                                'Muy bien',
                                'Se ha agregado tu registro',
                                'success'
                                )
                             setTimeout(function(){ formulario.setAttribute('action', 'GuardarRegistro.jsp')
                             return document.getElementById('Registro').submit();   }, 3000);
                             
                              
                         }
                         

                              

}) 
                        
                    </script>
        
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="js/materialize.min.css"></script>
       
    </body>
</html>
