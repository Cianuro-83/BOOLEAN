<?php 
require_once __DIR__ . "/Prodotto.php";
require_once __DIR__ . "/Categoria.php";
require_once __DIR__ . "/Controllo.php";

class Cucce extends Prodotto{
  use Controllo;
    protected int $altezza;
    protected int $larghezza;
    protected int $profondita;
    
    
    function __construct($_nome, $_prezzo, $_descrizione, $_pezzi_disponibili, $_larghezza, $_profondita, $_altezza, Categoria $_categoria){
      parent::__construct($_nome, $_prezzo, $_descrizione, $_pezzi_disponibili, $_categoria);
        $this->set_altezza($_altezza);
        $this->set_larghezza($_larghezza);
        $this->set_profondita($_profondita);
       
    }
    
//  **************************
//  IMPOSTO SET E GET 
//  **************************   // 


    //   altezza
    public function set_altezza($new_Value) {
      $this->controlla_dimensioni($new_Value);
        $this->altezza=$new_Value;
      }
    
    public function get_altezza() {
        return $this->altezza;
      }

    // larghezza
    public function set_larghezza($new_Value) {
      $this->controlla_dimensioni($new_Value);
        $this->larghezza=$new_Value;
      }
    
    public function get_larghezza() {
        return $this->larghezza;
      }
    // profondita
    public function set_profondita($new_Value) {
      $this->controlla_dimensioni($new_Value);
        $this->profondita=$new_Value;
      }
    
    public function get_profondita() {
        return $this->profondita;
      }





    //fine class Cucce
}

?>