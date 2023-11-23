console.log("CIAO CIANURO: oggi CICLO WHILE vs CICLO FOR");

// creo la variabile numero
let numero;
// creo array dove pushare i numeri dispari
let numeriDispari = [];
let totale = numeriDispari.length;
// chiedo numero all'utente
// while (isNaN) {
//   numero = parseInt(prompt("Inserisci il numero: "));
//   console.log(numero);

//   for (let i = 0; i < 9; i++) {
//     if (numero % 2 === 1) {
//       numeriDispari.push(numero);
//       console.log("hai i seguenti numeri dispari " + numeriDispari);
//     }
//     totale++;
//   }
// }

while (numeriDispari.length < 10) {
  numero = parseInt(prompt("Inserisci il numero: "));
  console.log(numero);
  if (numero % 2 === 1) {
    numeriDispari.push(numero);
  }
  // chiusura ciclo while
}
console.log("il tuo array ha " + numeriDispari.length + " numeri");
console.log("hai i seguenti numeri dispari " + numeriDispari);
document.write(
  "il tuo array è composto da " + numeriDispari.length + " numeri: " + "<br>"
);
for (let i = 0; i < numeriDispari.length; i++)
  document.write("<br>" + numeriDispari[i] + "<br>");
