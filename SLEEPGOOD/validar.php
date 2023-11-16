<?php
$dbhost="localhost";
$dbuser= "root";
$dbpass="";
$dbname="sleepgood";
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
if (!$conn){
die("NO hay conexión:". mysqli_connect_error());
}
else{
    echo "ingreso"; 
}
$nombre = $_POST["txtusuario"];
$pass = $_POST["txtpassword"];
$query = mysqli_query($conn, "SELECT * FROM login WHERE usuario = '".$nombre."' and password = '".$pass."'");
$nr = mysqli_num_rows($query);
if($nr == 1)
{
    header("location: http://localhost/SLEEPGOOD/CRUD/producto.php");
}
else if($nr == 0)
{
    header("location:http://localhost/SLEEPGOOD/main.html");
}
?>
