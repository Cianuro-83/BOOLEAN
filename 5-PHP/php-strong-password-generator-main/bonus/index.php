<?php
session_start();
// var_dump($_SESSION);

$psw_lenght= isset ($_GET['psw_lenght'])? $_GET['psw_lenght'] : 0;

require_once __DIR__ . "/function.php";

?>
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
        <div class="container scb-container">
            <form class="py-3" action="./result.php" method="GET">
                <div class="col-12 d-flex align-items-center">
                    <div class="col-6">Digita il numero di caratteri che devono comporre la tua password</div>
                    <div class="col-6"> <input type="number" class="form-control" name="psw_lenght" id="staticEmail"
                            placeholder="Lunghezza della password" min="6" max="32"></div>

                </div>


                <div class="col-12 d-flex  py-5">
                    <div class="col-3 ms-auto">
                        <h3>Quali caratteristiche deve avere la tua password?</h3>
                        <p class="text-danger py-4">Ricorda che più caratteristiche usi, maggiore sarà il grado di
                            protezione
                        </p>
                    </div>
                    <div class="col-3 ms-auto py-4">

                        <div class="form-check">
                            <input class="form-check-input" name="lettere" type="checkbox" value=""
                                id="flexCheckChecked1" checked>
                            <label class="form-check-label" for="flexCheckChecked1">
                                Lettere
                            </label>
                        </div>
                        <div class="form-check py-3">
                            <input class="form-check-input" name="numeri" type="checkbox" value=""
                                id="flexCheckChecked2" checked>
                            <label class="form-check-label" for="flexCheckChecked2">
                                Numeri
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input " name="simboli" type="checkbox" value=""
                                id="flexCheckChecked3" checked>
                            <label class="form-check-label" for="flexCheckChecked3">
                                Simboli
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-12 d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary mb-3 text-uppercase">genera password </button>
                </div>
            </form>
        </div>
    </div>

</body>

</html>