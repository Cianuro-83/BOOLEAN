<?php 
Class Categoria {
    protected string $animale="cane";
    protected string $img= "./img/cane.png";

    function __construct($_animale){
        if ($_animale == "gatto"){
            $this->animale=$_animale;
            $this->img="./img/gatto.png";
        }
    }
      public function get_animale() {
        return $this->animale;
      }

      public function get_img() {
        return $this->img;
      }
    // FINE CATEGORIA
}

?>