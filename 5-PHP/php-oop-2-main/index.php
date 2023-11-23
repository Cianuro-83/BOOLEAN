<?php 
require_once __DIR__ . "/models/db/db.php";

?>

<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ANIMAL E-SHOP php-oop-2</title>
    <!-- BOOTSTRAP 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- CUSTOM CSS -->
    <link rel="stylesheet" href="./css/style.css">
    <!-- FONTAWESOME FREE -->
    <script src="https://kit.fontawesome.com/6b35d32b47.js" crossorigin="anonymous"></script>

</head>

<body>
    <h1 class="text-center text-uppercase py-4 text-success">cianuro cat & dog shop's</h1>

    <div class="container">
        <!-- CIBO -->
        <h3 class="text-uppercase py-4 text-warning mx-5">cibo:</h3>
        <div class=" d-flex flex-wrap  justify-content-start">

            <?php 
        foreach ($cibi as $value):

        ?>
            <div class="card mx-1 text-black mb-2" style="width: 22rem;">
                <img src="<?php echo $value->get_categoria()->get_img() ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">nome:
                        </span><?php echo $value->get_nome()?></p>

                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">prezzo:
                        </span><?php echo $value->get_prezzo() ?><span class="fw-bolder text-uppercase text-success">
                            €</span>
                    </p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">descrizione:
                        </span><?php echo $value->get_descrizione() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">pezzi disponibili:
                        </span><?php echo $value->get_pezzi_disponibili() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">ingredienti:
                        </span><?php echo $value->get_ingredienti() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">indicazioni:
                        </span><?php echo $value->get_indicazioni() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">provenienza:
                        </span><?php echo $value->get_provenienza() ?></p>
                </div>
            </div>
            <?php
    endforeach;
    ?>
        </div>
        <!-- CUCCE -->
        <h3 class="text-uppercase py-4 text-warning mx-5">cucce:</h3>
        <div class=" d-flex flex-wrap  justify-content-start">
            <?php 
        foreach ($cucce as $value):
        ?>
            <div class="card mx-1 text-black mb-2" style="width: 22rem;">
                <img src="<?php echo $value->get_categoria()->get_img()?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">nome:
                        </span><?php echo $value->get_nome() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">prezzo:
                        </span><?php echo $value->get_prezzo() ?><span class="fw-bolder text-uppercase text-success">
                            €</span>
                    </p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">descrizione:
                        </span><?php echo $value->get_descrizione() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">pezzi disponibili:
                        </span><?php echo $value->get_pezzi_disponibili() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">larghezza:
                        </span><?php echo $value->get_larghezza() ?><span class="fw-bolder text-uppercase text-success">
                            cm</span></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">profondita:
                        </span><?php echo $value->get_profondita() ?><span
                            class="fw-bolder text-uppercase text-success"> cm</span></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">altezza:
                        </span><?php echo $value->get_altezza() ?><span class="fw-bolder text-uppercase text-success">
                            cm</span></p>
                </div>
            </div>
            <?php
    endforeach;
    ?>
        </div>

        <!-- GIOCHI -->
        <h3 class="text-uppercase py-4 text-warning mx-5">giochi:</h3>
        <div class=" d-flex flex-wrap  justify-content-start">
            <?php 
        foreach ($giochi as $value):
        ?>
            <div class="card mx-1 text-black mb-2" style="width: 22rem;">
                <img src="<?php echo $value->get_categoria()->get_img()?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">nome:
                        </span><?php echo $value->get_nome() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">prezzo:
                        </span><?php echo $value->get_prezzo() ?><span class="fw-bolder text-uppercase text-success">
                            €</span>
                    </p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">descrizione:
                        </span><?php echo $value->get_descrizione() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">pezzi disponibili:
                        </span><?php echo $value->get_pezzi_disponibili() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">valutazione:
                        </span><?php echo $value->get_valutazione() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">uso:
                        </span><?php echo $value->get_uso() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">materiale:
                        </span><?php echo $value->get_materiale() ?></p>
                </div>
            </div>
            <?php
    endforeach;
    ?>
        </div>

        <!-- varie -->
        <h3 class="text-uppercase py-4 text-warning mx-5">varie:</h3>
        <div class=" d-flex flex-wrap  justify-content-start">
            <?php 
        foreach ($lista_varie as $value):
        ?>
            <div class="card mx-1 text-black mb-2" style="width: 22rem;">
                <img src="<?php echo $value->get_categoria()->get_img()?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">nome:
                        </span><?php echo $value->get_nome() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">prezzo:
                        </span><?php echo $value->get_prezzo() ?><span class="fw-bolder text-uppercase text-success">
                            €</span>
                    </p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">descrizione:
                        </span><?php echo $value->get_descrizione() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">pezzi disponibili:
                        </span><?php echo $value->get_pezzi_disponibili() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">valutazione:
                        </span><?php echo $value->get_valutazione() ?></p>
                    <p class="card-text"><span class="fw-bolder text-uppercase text-success">uso:
                        </span><?php echo $value->get_uso() ?></p>
                </div>
            </div>
            <?php
    endforeach;
    ?>
        </div>

    </div>
    <!-- BOOTSTRAP 5 JAVA SCRIPT -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>
</body>

</html>