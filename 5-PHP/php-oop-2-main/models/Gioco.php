<?php 
require_once __DIR__ . "/Prodotto.php";
require_once __DIR__ ."/Categoria.php";
require_once __DIR__ . "/Controllo.php";

class Giochi extends Prodotto{
  use Controllo;

    protected string $materiale;
    protected int $valutazione;
    protected string $uso;
    
    
    function __construct($_nome, $_prezzo, $_descrizione, $_pezzi_disponibili, $_valutazione, $_uso, $_materiale, Categoria $_categoria){
        parent::__construct($_nome, $_prezzo, $_descrizione, $_pezzi_disponibili, $_categoria);
        $this->set_materiale($_materiale);
        $this->set_valutazione($_valutazione);
        $this->set_uso($_uso);
    }
    
//  **************************
//  IMPOSTO SET E GET 
//  **************************   // 


    //   materiale
    public function set_materiale($new_Value) {
      $this->controlla_testo($new_Value);
        $this->materiale=$new_Value;
      }
    
    public function get_materiale() {
        return $this->materiale;
      }

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
      $this->controlla_testo($new_Value);
        $this->uso=$new_Value;
      }
    
    public function get_uso() {
        return $this->uso;
      }



    //fine class Giochi
}

?>