<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- BOOTSTRAP 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- CUSTOM CSS -->
    <link rel="stylesheet" href="./css/style.css">

</head>

<body>
    <?php

$hotels = [
    
    [
        'name' => 'Hotel Belvedere',
        'description' => 'Hotel Belvedere Descrizione',
        'parking' => true,
        'vote' => 4,
        'distance_to_center' => 10.4
    ],
    [
        'name' => 'Hotel Futuro',
        'description' => 'Hotel Futuro Descrizione',
        'parking' => true,
        'vote' => 2,
        'distance_to_center' => 2
    ],
    [
        'name' => 'Hotel Rivamare',
        'description' => 'Hotel Rivamare Descrizione',
        'parking' => false,
        'vote' => 1,
        'distance_to_center' => 1
    ],
    [
        'name' => 'Hotel Bellavista',
        'description' => 'Hotel Bellavista Descrizione',
        'parking' => false,
        'vote' => 5,
        'distance_to_center' => 5.5
    ],
    [
        'name' => 'Hotel Milano',
        'description' => 'Hotel Milano Descrizione',
        'parking' => true,
        'vote' => 2,
        'distance_to_center' => 50
    ],
    
];
// var_dump($hotels);
?>
    <ul>
        <?php

foreach($hotels as $value):
    ?>
        <li><?php echo $value["name"] . $value["description"] . $value["parking"] . $value["vote"] . $value[ "distance_to_center"]." km";?>
        </li>
        <?php
    endforeach;
    ?>
    </ul>
    <div class="container">
        <table class="table table-dark table-striped">
            <thead>
                <tr>
                    <th scope="col">Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Parking</th>
                    <th scope="col">Vote</th>
                    <th scope="col">Distance to Center</th>

                </tr>
            </thead>
            <?php

                        foreach($hotels as $value):
                     ?>
            <tbody>
                <tr>
                    <td><?php echo $value["name"];?></td>
                    <td><?php echo $value["description"];?></td>
                    <td><?php echo $value["parking"]? "SI" : "NO" ?></td>
                    <td><?php echo $value["vote"]." / 5";?></td>
                    <td><?php echo $value["distance_to_center"]. " km";?></td>
                    <?php
                          endforeach;
                      ?>
                </tr>

            </tbody>
        </table>
    </div>


</body>

</html>