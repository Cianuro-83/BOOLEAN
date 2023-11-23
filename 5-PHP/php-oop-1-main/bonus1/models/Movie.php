<?php
class Movie{
    public string $titolo;
    public string $regista;
    public array $genere;
    public string $produzione;
    public int $anno_di_uscita;
    public int $durata_in_minuti;
    public string $distribuzione;
    //costruttore con dati minimi richiesti 
    function __construct($_titolo, $_produzione, $_anno_di_uscita) {
        $this->titolo = $_titolo;
        $this->produzione = $_produzione;
        $this->anno_di_uscita = $_anno_di_uscita;
    }
// metodo che calcola da quanti anni è uscito il film
    function get_anni_sulla_scena(){
        // mi recupero la data attuale espressa solo in anni
        $data_attuale= date("Y");
        return $data_attuale - $this->anno_di_uscita;
    }
}
?>