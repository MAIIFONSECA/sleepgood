<?php

include("conexion.php");
$con=conectar();

$referencia=$_GET['id'];

$sql="DELETE FROM producto  WHERE referencia='$referencia'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: producto.php");
    }
?>
