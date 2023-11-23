console.log("BENVENUTO CIANURO NELLA TUA BISCA CLANDESTINA");
const userElement = document.getElementById("user");
const mailElement = document.getElementById("mail");
let dadiAutoPlayerElement = document.getElementById("dadi-auto-player");
let dadiAutoPcElement = document.getElementById("dadi-auto-pc");
let dadiAutoRisultatoElement = document.getElementById("dadi-auto-esito");
let firstName = prompt("INSERISCI IL TUO NOME");
userElement.innerHTML = firstName;
console.log(userElement.outerText);
// creo array con le mail
const mail = [
  "buzzeosimone@gmail.com",
  "buzzeosimone@hotmail.com",
  "buzzeosimone@yahoo.com",
  "buzzeosimone@outlook.com",
  "buzzeosime@madonnadicanneto.it",
  "info@madonnadicanneto.it",
];
// console.log(mail);
// chiedo la mail all'utente
let insertEmail = prompt("INSERISCI IL TUO INDIRIZZO EMAIL..");
console.log(insertEmail);
// cerco la mail inserita
for (let i = 0; i < mail.length; i++) {
  if (mail[i] === insertEmail) {
    // console.log("Bentornato " + firstName);
    mailElement.innerHTML = "BENTORNATO " + firstName;
    break;
  } else {
    mailElement.innerHTML =
      firstName +
      " La tua mail non è presente nel sistema!!! Stai giocando come ospite";
  }
}
// insertEmail !mail[i]
//     alert(
//         "Siamo spiacenti " + firstName + " la tua mail non è presente nei nostri database. Per poter accedere alla Bisca devi prima registrarti.")
// } else {
//     mailElement.innerHTML = firstName + " sei un utente non registrato";

// };
// creo numero random per giocatore
const userNumber = Math.floor(Math.random() * 5 + 1);
dadiAutoPlayerElement.innerHTML = userNumber;
console.log(userNumber);
// creo numero random per pc
const pcNumber = Math.floor(Math.random() * 5 + 1);
dadiAutoPcElement.innerHTML = pcNumber;
console.log(pcNumber);
// LANCIO I DADI
if (userNumber > pcNumber) {
  dadiAutoRisultatoElement.innerHTML =
    "Complimenti " + firstName + " hai VINTO!!!";
  console.log("Complimenti " + firstName + " hai VINTO!!!");
} else if (userNumber < pcNumber) {
  dadiAutoRisultatoElement.innerHTML =
    "Mi dispiace " + firstName + " hai PERSO!!!";
  console.log("Mi dispiace " + firstName + " hai PERSO!!!");
} else {
  dadiAutoRisultatoElement.innerHTML =
    "PARI... non abbiamo nné vinti né vincitori";
  console.log("PARI");
}
// **************************
// GIOCO 2: LANCIO DADI OLD STYLE
// **************************
