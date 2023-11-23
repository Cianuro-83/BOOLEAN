<?php
// var_dump($_GET);
function genera_psw($psw_lenght){
    $caratteri=[
        "QWERTYUIOPASDFGHJKLZXCVBNM",
        "qwertyuiopasdfghjklzxcvbnm",
        "1234567890",
        "!$%&*-+=",
    ];
    $caratteri_2=[
        "QWERTYUIOPASDFGHJKLZXCVBNM",
        "qwertyuiopasdfghjklzxcvbnm",
        "!£%&/*-+=",
    ];
    $psw="";
for ($i=0; $i < $psw_lenght; $i++){
    if (isset ($_GET['lettere']) && isset ($_GET['numeri']) && isset ($_GET['simboli'])){
    $casual_number =rand(0,3);
    // var_dump($casual_number);
    $last_index= strlen($caratteri[$casual_number])-1;
    // var_dump($last_index);
    $psw.= $caratteri[$casual_number][rand(0,$last_index)];
    }elseif(isset ($_GET['lettere']) && isset ($_GET['numeri']) && !isset ($_GET['simboli'])){
        $casual_number =rand(0,2);
        $last_index= strlen($caratteri[$casual_number])-1;
        $psw.= $caratteri[$casual_number][rand(0,$last_index)];
    }elseif(isset ($_GET['lettere']) && !isset ($_GET['numeri']) && !isset ($_GET['simboli'])){
        $casual_number =rand(0,1);
        $last_index= strlen($caratteri[$casual_number])-1;
        $psw.= $caratteri[$casual_number][rand(0,$last_index)];
    }elseif(!isset ($_GET['lettere']) && isset ($_GET['numeri']) && !isset ($_GET['simboli'])){
        $casual_number =rand(2,2);
        $last_index= strlen($caratteri[$casual_number])-1;
        $psw.= $caratteri[$casual_number][rand(0,$last_index)];
    }elseif(!isset ($_GET['lettere']) && isset ($_GET['numeri']) && isset ($_GET['simboli'])){
        $casual_number =rand(2,3);
        $last_index= strlen($caratteri[$casual_number])-1;
        $psw.= $caratteri[$casual_number][rand(0,$last_index)];
    }elseif(!isset ($_GET['lettere']) && !isset ($_GET['numeri']) && isset ($_GET['simboli'])){
        $casual_number =rand(3,3);
        $last_index= strlen($caratteri[$casual_number])-1;
        $psw.= $caratteri[$casual_number][rand(0,$last_index)];
    }elseif(isset ($_GET['lettere']) && !isset ($_GET['numeri']) && isset ($_GET['simboli'])){
        $casual_number =rand(0,2);
        $last_index= strlen($caratteri_2[$casual_number])-1;
        $psw.= $caratteri_2[$casual_number][rand(0,$last_index)];
    };
};
return $psw;
};

?>