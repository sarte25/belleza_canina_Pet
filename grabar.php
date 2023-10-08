<html>
    <body>
    <LINK REL="STYLESHEET" HREF="style1.css"> 
<h1 class="trorte">
<?php
include("conexion.php");

$nombrex =$_REQUEST["wnombre"]; // Elimina espacios en blanco al principio y al final
$apellidox =$_REQUEST["wapellido"];
$correox =$_REQUEST["wcorreo"];
$barriox =$_REQUEST["wbarrio"];
$recidenciax =$_REQUEST["wrecidencia"];

// Generamos el código de registro
$codigo_registro = rand(1, 100);

// Generamos el código de cliente
$Codigo_cliente = rand(1, 100);


// Consulta la base de datos para verificar si el nombre ya existe
$sqlconsultar = "SELECT * FROM registro WHERE LOWER(Nombres) = LOWER('$nombrex')";
$resultado = mysqli_query($conn, $sqlconsultar);
if (!$resultado) {
    die("Error en la consulta: " . mysqli_error($conn));
}

if (mysqli_num_rows($resultado) > 0) {
    echo "El registro ya existe";
    echo "<br><a href='bellesa_canina.html'>Volver al inicio</a>";
} else {
   // Consulta para insertar el nuevo registro
$sql = "INSERT INTO registro (Nombres, Apellidos, correo, Barrio, Recidencia, codigo_registro, Codigo_cliente) VALUES ('$nombrex', '$apellidox', '$correox', '$barriox', '$recidenciax','$codigo_registro', '$Codigo_cliente')";

    if (mysqli_query($conn, $sql)) {
        echo "Registro grabado";
        echo "<br><a href='bellesa_canina.html'>Volver al inicio</a>";
    } else {
        echo "Error al grabar: " . mysqli_error($conn);
    }
}

mysqli_close($conn);
?>

</h1>
</body>
</html>