<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Security-Policy" content="default-src 'self' data: gap: https://ssl.gstatic.com 'unsafe-eval'; style-src 'self' 'unsafe-inline'; media-src *; img-src 'self' data: content:;">
        <meta name="format-detection" content="telephone=no">
        <meta name="msapplication-tap-highlight" content="no">
        <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width">
        <title>Licores</title>
        <link href="css/estiloprincipal.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    </head>
    <body>
        <!-- NavBar -->
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="#">Licores</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="index.html">Hoja 1</a></li>
                        <li><a href="hoja2.php">Hoja 2</a></li>
                        <li><a href="hoja3.html">Hoja 3</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <?php
            include("funciones/funciones.php");
            $listadoLicores=listarLicores();
        ?>

        <div class="datagrid">
          <h2>Detalles</h2>
            <table border="1">
            <thead>
                <tr>
                    <th>NOMBRE</th>
                    <th>DESCRIPCION</th>
                    <th>CATEGORIA</th>
                </tr>   
            </thead>
                <h3>
                    <tbody>
                        <?php
                            while($row=mysql_fetch_array($listadoLicores)){
                                echo "<tr>";
                                    echo "<td>".$row['dlicores_nombre']."</td>";
                                    echo "<td>".$row['dlicores_descripcion']."</td>";
                                    echo "<td>".$row['dlicores_categoria_id']."</td>";
                                echo "</tr>";
                            }
                        ?>
                    </tbody>
                </h3>
            </table>
        </div>
    </body>
</html>