<?php
   include("configuracion.php");
   $conn = mysqli_connect($servidor, $usuario, $clave, $dbregistrarse);
   if (!$conn) {
      die("Error de conexión: " . mysqli_connect_error());
   }
   //echo"conectado";
?>