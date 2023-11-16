<?php 
    include("conexion.php");
    $con=conectar();

$id=$_GET['id'];

$sql="SELECT * FROM producto WHERE referencia='$id'";
$query=mysqli_query($con,$sql);

$row=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <title>Actualizar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        
    </head>
    <body>
                <div class="container mt-5">
                    <form action="update.php" method="POST">
                    <input type="hidden" name="referencia" value="<?php echo $row['referencia']  ?>">
                    <input type="hidden" name="categoria" value="<?php echo $row['categoria']  ?>">
                    <input type="hidden" name="precio_producto" value="<?php echo $row['precio_producto']  ?>">
                    <input type="hidden" name="preferencia" value="<?php echo $row['preferencia']  ?>">
                    <input type="hidden" name="Medida" value="<?php echo $row['Medida']  ?>">
            
                                <input type="text" class="form-control mb-3" name="referencia" placeholder="referencia" value="<?php echo $row['referencia']  ?>">
                                <input type="text" class="form-control mb-3" name="categoria" placeholder="categoria" value="<?php echo $row['categoria']  ?>">
                                <input type="text" class="form-control mb-3" name="precio_producto" placeholder="precio_producto" value="<?php echo $row['precio_producto']  ?>">
                                <input type="text" class="form-control mb-3" name="preferencia" placeholder="preferencia" value="<?php echo $row['preferencia']  ?>">
                                <input type="text" class="form-control mb-3" name="Medida" placeholder="Medida" value="<?php echo $row['Medida']  ?>">
                                
                            <input type="submit" class="btn btn-primary btn-block" value="Actualizar">
                            Header("Location: producto.php");
                    </form>
                    
                </div>
    </body>
</html>