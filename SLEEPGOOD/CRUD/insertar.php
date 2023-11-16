<?php
include("conexion.php");
$con=conectar();
$referencia=$_POST['referencia'];
$categoria=$_POST['categoria'];
$precio_producto=$_POST['precio_producto'];
$preferencia=$_POST['preferencia'];
$Medida=$_POST['Medida'];

$sql="INSERT INTO producto VALUES('$referencia','$categoria','$precio_producto','$preferencia','$Medida' )";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: producto.php");
    
}else {
}
?>