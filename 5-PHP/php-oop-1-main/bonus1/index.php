<?php
require_once __DIR__ . "/models/Movie.php";
// istanzio il primo film
$film1= new Movie("Babilon", "USA", 2023);
$film1->regista= "Damien Chazelle"; 
$film1->genere=["0"=>"Drammatico"];
$film1->durata_in_minuti= 183;
$film1->distribuzione= "Eagle Picture";
// var_dump($film1, $film1->get_anni_sulla_scena());

// istanzio il secondo film
$film2= new Movie("Gli spiriti dell'isola", "Irlanda, USA, Gran Bretagna", 2022);
$film2->regista= "Martin McDonagh"; 
$film2->genere=["0"=>"Drammatico"];
$film2->durata_in_minuti= 114;
$film2->distribuzione= "Walt Disney";
// var_dump($film2, $film2->get_anni_sulla_scena());

// istanzio il terzo film
$film3= new Movie("Steve Jobs", "USA", 2015);
$film3->regista= "Danny Boyle"; 
$film3->genere= ["0"=>"Bibliografico"];
$film3->durata_in_minuti= 122;
$film3->distribuzione= "Universal Picture";
// var_dump($film3, $film3->get_anni_sulla_scena());
// ?>


<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BONUS 1 Movie php-oop-1</title>
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
        <div class="card bg-info" style="width: 18rem;">
            <div class="card-body">
                <h3 class="card-title text-success text-center text-uppercase"><?php echo $film1->titolo ?></h3>
                <h5 class="card-subtitle mb-2 text-muted">Regia di: <span
                        class="text-danger"><?php echo $film1->regista ?></span></h5>
                <p class="card-subtitle mb-2 text-muted">Genere: <span
                        class="text-danger"><?php echo $film1->genere[0]?></span></p>
                <p class="card-subtitle mb-2 text-muted">Paese di produzione: <span
                        class="text-danger"><?php echo $film1->produzione ?></span></p>
                <p class="card-subtitle mb-2 text-muted">Anno di uscita nelle sale: <span
                        class="text-danger"><?php echo $film1->anno_di_uscita ?></span></p>
                <p class="card-subtitle mb-2 text-muted">Durata <span
                        class="text-danger"><?php echo $film1->durata_in_minuti?></span> minuti</p>
                <p class="card-subtitle mb-2 text-muted">Distribuzione: <span
                        class="text-danger"><?php echo $film1->distribuzione?></span></p>
                <p class="card-subtitle mb-2 text-muted">Sulla scena da <span
                        class="text-danger"><?php echo $film1->get_anni_sulla_scena() ?></span> anni</p>
            </div>
        </div>

        <div class="card bg-info mx-5" style="width: 18rem;">
            <div class="card-body">
                <h3 class="card-title text-success text-center text-uppercase"><?php echo $film2->titolo ?></h3>
                <h5 class="card-subtitle mb-2 text-muted">Regia di: <span
                        class="text-danger"><?php echo $film2->regista ?></span></h5>
                <p class="card-subtitle mb-2 text-muted">Genere: <span
                        class="text-danger"><?php echo $film2->genere[0] ?></span></p>
                <p class="card-subtitle mb-2 text-muted">Paese di produzione: <span
                        class="text-danger"><?php echo $film2->produzione ?></span></p>
                <p class="card-subtitle mb-2 text-muted">Anno di uscita nelle sale: <span
                        class="text-danger"><?php echo $film2->anno_di_uscita ?></span></p>
                <p class="card-subtitle mb-2 text-muted">Durata <span
                        class="text-danger"><?php echo $film2->durata_in_minuti?></span> minuti</p>
                <p class="card-subtitle mb-2 text-muted">Distribuzione: <span
                        class="text-danger"><?php echo $film2->distribuzione?></span></p>
                <p class="card-subtitle mb-2 text-muted">Sulla scena da <span
                        class="text-danger"><?php echo $film2->get_anni_sulla_scena() ?></span> anni</p>
            </div>
        </div>
        <div class="card bg-info" style="width: 18rem;">
            <div class="card-body">
                <h3 class="card-title text-success text-center text-uppercase"><?php echo $film3->titolo ?></h3>
                <h5 class="card-subtitle mb-2 text-muted">Regia di: <span
                        class="text-danger"><?php echo $film3->regista ?></span></h5>
                <p class="card-subtitle mb-2 text-muted">Genere: <span
                        class="text-danger"><?php echo $film3->genere[0] ?></span></p>
                <p class="card-subtitle mb-2 text-muted">Paese di produzione: <span
                        class="text-danger"><?php echo $film3->produzione ?></span></p>
                <p class="card-subtitle mb-2 text-muted">Anno di uscita nelle sale: <span
                        class="text-danger"><?php echo $film3->anno_di_uscita ?></span></p>
                <p class="card-subtitle mb-2 text-muted">Durata <span
                        class="text-danger"><?php echo $film3->durata_in_minuti?></span> minuti</p>
                <p class="card-subtitle mb-2 text-muted">Distribuzione: <span
                        class="text-danger"><?php echo $film3->distribuzione?></span></p>
                <p class="card-subtitle mb-2 text-muted">Sulla scena da <span
                        class="text-danger"><?php echo $film3->get_anni_sulla_scena() ?></span> anni</p>
            </div>

        </div>
        <!-- BOOTSTRAP 5 JAVA SCRIPT -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
        </script>
</body>

</html>