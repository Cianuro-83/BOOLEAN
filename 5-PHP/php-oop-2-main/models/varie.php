<?php 
require_once __DIR__ . "/Prodotto.php";
require_once __DIR__ . "/Categoria.php";
require_once __DIR__ . "/Controllo.php";

class Varie extends Prodotto{
  use Controllo;
    protected int $valutazione;
    protected string $uso;
    
    
    function __construct($_nome, $_prezzo, $_descrizione, $_pezzi_disponibili, $_valutazione, $_uso, Categoria $_categoria){
        parent::__construct($_nome, $_prezzo, $_descrizione, $_pezzi_disponibili, $_categoria);
        
        $this->set_valutazione($_valutazione);
        $this->set_uso($_uso);
    }
    
//  **************************
//  IMPOSTO SET E GET 
//  **************************   // 

   // valutazione
   public function set_valutazione($new_Value) {
    $this->controlla_gradimento($new_Value);
      $this->valutazione=$new_Value;
    }
    
    public function get_valutazione() {
        return $this->valutazione;
      }
    // uso
    public function set_uso($new_Value) {
      $this->controlla_utilizzo($new_Value);
        $this->uso=$new_Value;
      }
    
    public function get_uso() {
        return $this->uso;
      }

    //fine class Varie
}

?>