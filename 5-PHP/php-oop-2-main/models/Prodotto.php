<?php 
require_once __DIR__ . "/Categoria.php";
require_once __DIR__ . "/Controllo.php";


class Prodotto{
  use Controllo;
  
    protected string $nome;
    protected float $prezzo;
    protected string $descrizione;
    protected int $pezzi_disponibili;
    protected Categoria $categoria;
    

    function __construct($_nome, $_prezzo, $_descrizione, $_pezzi_disponibili, Categoria $_categoria){
        $this->set_nome($_nome);
        $this->set_prezzo($_prezzo);
        $this->set_descrizione($_descrizione);
        $this->set_pezzi_disponibili($_pezzi_disponibili);
        $this->categoria = $_categoria;
    }
  
        
    public function set_nome($new_value) {
      $this->controlla_testo($new_value);
      $this->nome=$new_value;

  }

    public function get_nome() {
        return $this->nome;
    }

    public function get_categoria() {
      return $this->categoria;
  }

  public function set_prezzo($new_value) {
    $this->controlla_prezzo($new_value);
    $this->prezzo=$new_value;

}

        public function get_prezzo() {
            return $this->prezzo;
          }

          public function set_descrizione($new_value) {
            $this->controlla_testo($new_value);
            $this->descrizione=$new_value;
          }
      
         
          public function get_descrizione() {
            return $this->descrizione;
          }

          public function set_pezzi_disponibili($new_value) {
            $this->controlla_pezzi($new_value);
            $this->pezzi_disponibili=$new_value;
          }

          public function get_pezzi_disponibili() {
            return $this->pezzi_disponibili;
          }
    



    //fine class Prodotti 
}

?>