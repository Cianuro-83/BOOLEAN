<?php
require_once __DIR__ . "/models/prova/db.php";
// ?>
<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BONUS 2 Movie php-oop-1</title>
    <!-- BOOTSTRAP 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- CUSTOM CSS -->
    <link rel="stylesheet" href="./css/style.css">
    <!-- FONTAWESOME FREE -->
    <script src="https://kit.fontawesome.com/6b35d32b47.js" crossorigin="anonymous"></script>

</head>

<body>
    <div class="container py-5 d-flex justify-content-center">
        <?php 
        foreach ($db as $value):
        ?>
        <div class="card bg-info mx-4" style="width: 18rem;">
            <div class="card-body">
                <h3 class="card-title text-success text-center text-uppercase"><?php echo $value->titolo ?></h3>
                <h5 class="card-subtitle mb-2 text-muted">Regia di: <span
                        class="text-danger"><?php echo $value->regista ?></span></h5>
                <p class="card-subtitle mb-2 text-muted">Genere: <span
                        class="text-danger"><?php echo $value->genere[0]?></span></p>
                <p class="card-subtitle mb-2 text-muted">Paese di produzione: <span
                        class="text-danger"><?php echo $value->produzione ?></span></p>
                <p class="card-subtitle mb-2 text-muted">Anno di uscita nelle sale: <span
                        class="text-danger"><?php echo $value->anno_di_uscita ?></span></p>
                <p class="card-subtitle mb-2 text-muted">Durata <span
                        class="text-danger"><?php echo $value->durata_in_minuti?></span> minuti</p>
                <p class="card-subtitle mb-2 text-muted">Distribuzione: <span
                        class="text-danger"><?php echo $value->distribuzione?></span></p>
                <p class="card-subtitle mb-2 text-muted">Sulla scena da <span
                        class="text-danger"><?php echo $value->get_anni_sulla_scena() ?></span> anni</p>
            </div>
        </div>
        <?php
    endforeach;
    ?>

    </div>
    <!-- BOOTSTRAP 5 JAVA SCRIPT -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>
</body>

</html>