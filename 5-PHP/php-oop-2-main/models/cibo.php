<?php 
require_once __DIR__ . "/Prodotto.php";
require_once __DIR__ . "/Categoria.php";
require_once __DIR__ . "/Controllo.php";
class Cibo extends Prodotto{
  use Controllo;
    protected string $provenienza;
    protected string $ingredienti;
    protected string $indicazioni;

    
    
    function __construct($_nome, $_prezzo, $_descrizione, $_pezzi_disponibili, $_ingredienti, $_indicazioni, $_provenienza, Categoria $_categoria){
        parent::__construct($_nome, $_prezzo, $_descrizione, $_pezzi_disponibili, $_categoria);
        $this->set_provenienza($_provenienza);
        $this->set_ingredienti($_ingredienti);
        $this->set_indicazioni($_indicazioni);
    }
    
//  **************************
//  IMPOSTO SET E GET 
//  **************************   // 


    //   provenienza
    public function set_provenienza($new_Value) {
      $this->controlla_testo($new_Value);
        $this->provenienza=$new_Value;
      }
    
    public function get_provenienza() {
        return $this->provenienza;
      }

    // ingredienti
    public function set_ingredienti($new_Value) {
      $this->controlla_testo($new_Value);
        $this->ingredienti=$new_Value;
      }
    
    public function get_ingredienti() {
        return $this->ingredienti;
      }
    // indicazioni
    public function set_indicazioni($new_Value) {
      $this->controlla_testo($new_Value);
        $this->indicazioni=$new_Value;
      }
    
    public function get_indicazioni() {
        return $this->indicazioni;
      }





    //fine class Cibo
}

?>