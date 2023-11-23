<?php 
require_once __DIR__ . "/../Movie.php";
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


$db=[];
$db[]=$film1;
$db[]=$film2;
$db[]=$film3;
// var_dump($db);

?>