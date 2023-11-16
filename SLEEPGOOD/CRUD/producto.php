<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM producto";
    $query=mysqli_query($con,$sql);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title> PRODUCTOS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        
    </head>
    <body style="background-color:#eeb9fb">

            <div class="container mt-5">
                    <div class="row"> 
                        
                        <div class="col-md-3">
                        <h2 style="text-align:center; color:rgb(255, 98, 0);">Ingrese los productos que desea <br> <br> <img src="IMG1.jpg" alt= width="150" height="200" align="center"/>
		</h2> <br> <br>
                        
                                <form action="insertar.php" method="POST">

                                <input type="text" class="form-control mb-3" name="referencia" placeholder="referencia">
                                    <input type="text" class="form-control mb-3" name="categoria" placeholder="categoria">
                                    <input type="text" class="form-control mb-3" name="precio_producto" placeholder="precio_producto">
                                    <input type="text" class="form-control mb-3" name="preferencia" placeholder="preferencia">
                                    <input type="text" class="form-control mb-3" name="Medida" placeholder="Medida">
                                    
                                    <input type="submit" class="btn btn-primary">
                                </form>
                        </div>

                        <div class="col-md-8">
                            <table class="table" >
                                <thead class="table-success table-striped" >
                                    <tr>
                                    <th>referencia</th>
                                        <th>categoria</th>
                                        <th>precio_producto</th>
                                        <th>preferencia</th>
                                        <th>Medida</th>
                                    </tr>
                                </thead>

                                <tbody>
                                        <?php
                                            while($row=mysqli_fetch_array($query)){
                                        ?>
                                            <tr>
                                            <th><?php  echo $row['referencia']?></th>
                                                <th><?php  echo $row['categoria']?></th>
                                                <th><?php  echo $row['precio_producto']?></th>    
                                                <th><?php  echo $row['preferencia']?></th> 
                                                <th><?php  echo $row['Medida']?></th> 

                                             

                                                <th><a href="actualizar.php?id=<?php echo $row['referencia'] ?>" class="btn btn-info">Editar</a></th>
                                                <th><a href="delete.php?id=<?php echo $row['referencia'] ?>" class="btn btn-danger">Eliminar</a></th>                                        
                                            </tr>
                                        <?php 
                                            }
                                        ?>
                                </tbody>
                            </table>
                        </div>
                    </div>  
            </div>
    </body>
</html>