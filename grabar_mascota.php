<html>
    <body>
    <LINK REL="STYLESHEET" HREF="style1.css"> 
<h1 class="trorte">
<?php
include("conexion.php");

$mascotax =$_REQUEST["wmascota"]; // Elimina espacios en blanco al principio y al final
$dueñox =$_REQUEST["wdueño"];
$cumplex =$_REQUEST["wcumple"];
$razax =$_REQUEST["wraza"];


// Generamos el código de cliente
$Codigo_Mascota = rand(1, 100);

// Generamos el código de pedido
$cod_ped = rand(1, 100);

// Consulta la base de datos para verificar si el nombre ya existe
$sqlconsultar = "SELECT * FROM mascota WHERE LOWER(Nomb_mascota	) = LOWER('$mascotax')";
$resultado = mysqli_query($conn, $sqlconsultar);
if (!$resultado) {
    die("Error en la consulta: " . mysqli_error($conn));
}

if (mysqli_num_rows($resultado) > 0) {
    echo "El registro ya existe";
    echo "<br><a href='bellesa_canina.html'>Volver al inicio</a>";
} else {
   // Consulta para insertar el nuevo registro
$sql = "INSERT INTO mascota (Nomb_mascota, Nombre_dueño, Cumple, Raza_mascota, Codigo_Mascota,cod_ped ) VALUES ('$mascotax', '$dueñox', '$cumplex', '$razax','$Codigo_Mascota','$cod_ped')";

    if (mysqli_query($conn, $sql)) {
        echo "Registro Guardado Gracias Por Su Tiempo";
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