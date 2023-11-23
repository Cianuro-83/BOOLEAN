<?php
session_start();
$psw_lenght= isset ($_GET['psw_lenght'])? $_GET['psw_lenght'] : 0;
require_once __DIR__ . "/function.php";
$password=genera_psw($psw_lenght);

$_SESSION ["password"] = $password;
// var_dump($_SESSION);

?>
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BONUS PSW GENERATOR</title> <!-- BOOTSTRAP 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- CUSTOM CSS -->
    <link rel="stylesheet" href="./css/style.css">

</head>

<body>
    <div class="container py-5">
        <h1 class="text-center text-capitalize text-warning"> strong password generator</h1>
        <h2 class="text-info text-center py-3">Genera una password sicura</h2>
        <h2>La password generata dal sistema è:</h2>
        <h3 class="text-danger text-center"><?php echo $_SESSION["password"]?>
        </h3>
        <form action="./index.php" method="GET">

            <div class="col-12 d-flex justify-content-center py-5">
                <button type="submit" class="btn btn-primary mb-3 text-uppercase">Modifica caratteristiche
                    password</button>
            </div>
    </div>
    </form>
    </div>
</body>

</html>