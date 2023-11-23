<?php

function genera_psw($psw_lenght){
    $caratteri=[
        "QWERTYUIOPèASDFGHJKLZXCVBNM",
        "qwertyuiopasdfghjklzxcvbnm",
        "1234567890",
        "!£%&/*-+=",
    ];
    $psw="";
for ($i=0; $i < $psw_lenght; $i++){
    $casual_number =rand(0,3);
    // var_dump($casual_number);
    $last_index= strlen($caratteri[$casual_number])-1;
    // var_dump($last_index);
    $psw.= $caratteri[$casual_number][rand(0,$last_index)];
};
return $psw;
};

?>