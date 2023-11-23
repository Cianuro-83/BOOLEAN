<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Badwords</title>
    <link rel="stylesheet" href="./style.css">

</head>

<body>
    <form action="./censura.php" method="GET">
        <textarea id="testo" name="testo" rows="5" cols="33" placeholder="Inserisci qui il tuo testo">
    </textarea>
        <input type="text" name="censura" placeholder="Parola da censurare">
        <button type="submit">INVIA</button>

    </form>

</body>

</html>