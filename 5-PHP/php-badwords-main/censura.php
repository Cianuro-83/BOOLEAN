<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Badwords 2</title>
    <link rel="stylesheet" href="./style.css">
</head>

<body>
    <div class="php">

        <?php
    $testo = $_GET["testo"];
    $censura = $_GET["censura"];
    $testo_censurato = str_replace($censura, "***", $testo);
    
    ?>

        <h2>Questo è il testo originale: </h2>
        <p><?php echo $testo; ?></p>
        <h2>ed è composta da <span><?php echo strlen($testo); ?></span> lettere</h2>


        <h2>Questa invece è la parola da censurare: </h2>
        <p><?php echo $censura; ?></p>

        <h2>e questo è il testo censurato </h2>
        <p><?php echo $testo_censurato; ?></p>
    </div>
</body>

</html>