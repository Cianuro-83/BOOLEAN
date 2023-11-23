<?php 
// creo funzione per controllare che il campo testuale non rimanga vuoto
trait Controllo{
     function controlla_testo($new_Value) {
        if (strlen ($new_Value)<=1){
            throw new Exception("Non puoi lasciare questo campo vuoto, per cortesia assicurati di inserire il testo.");
            }
        }
        function controlla_prezzo($new_Value) {
            if ($new_Value<=0){
                throw new Exception("Questo prodotto non prevede l'opzione regalo, il prezzo che hai inserito non è corretto.");
                }
            }

        
        function controlla_pezzi($new_Value) {
            if ($new_Value<=0){
                throw new Exception("Se il valore di questo campo è zero, sarebbe meglio chiamare il fornitore o rimuoverlo dallo store.");
                }
            }

            function controlla_dimensioni($new_Value) {
                if ($new_Value<=30){
                    throw new Exception("Le dimensioni dell'oggetto che stai inserendo sono troppo piccole per un il tipo di animale a cui è destinato");
                    }
                }

                function controlla_gradimento($new_Value) {
                    if ($new_Value<0 ||$new_Value >5 ){
                        throw new Exception("Le valutazioni vanno espresse con numeri compresi tra 0 e 5");
                        }
                    }
                    function controlla_utilizzo($new_Value) {
                        if (!$new_Value =="interno" || !$new_Value =="esterno" ){
                            throw new Exception("I valori ammessi per questo campo sono: interno  oppure esterno");
                            }
                        }

        }

?>