<?php

include("conexion.php");
$con=conectar();
$referencia=$_POST['referencia'];
$categoria=$_POST['categoria'];
$precio_producto=$_POST['precio_producto'];
$preferencia=$_POST['preferencia'];
$Medida=$_POST['Medida'];

$sql="UPDATE producto SET  referencia=$referencia, categoria='$categoria', precio_producto='$precio_producto', preferencia='$preferencia', Medida='$Medida' WHERE referencia='$referencia'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: producto.php");
    }
?>