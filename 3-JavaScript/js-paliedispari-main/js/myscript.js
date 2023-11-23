console.log("Ciao Cianuro.. oggi PALI & DISPARI");
// .....................................................................................................ESERCIZIO PAROLA PALINDROMA
// .....................................................................................................
// CREO INPUT PER RICHIEDERE PAROLA
let parola = prompt("Inserisci una parola");
console.log(parola);

let prova = palindroma(parola);
console.log(prova);

let risulto = palindroma(parola);
if (risulto === true) {
  document.write("la parola " + parola + " è palindroma");
} else {
  document.write("la parola " + parola + " NON è palindroma");
}

// .....................................................................................................ESERCIZIO PARI
// .....................................................................................................
// CREO INPUT PER RICHIEDERE ALL'UTENTE SE VUOLE PARI O DISPARI E FACCIO LA VERIFICA
let userChoice = prompt("Preferisci pari o dispari?");
console.log(userChoice);
while (userChoice !== "pari" && userChoice !== "dispari") {
  alert(
    "Cortesemente inserisci la tua scelta digitando tutto in minuscolo e scrivendo solo pari o dispari"
  );
  userChoice = prompt("Preferisci pari o dispari?");
  console.log(userChoice);
}
// CREO INPUT PER RICHIEDERE ALL'UTENTE UN NUMERO DA 1 A 5E FACCIO LA VERIFICA
let userNumber = prompt("Inserisci un numero compreso tra 1 e 5");
console.log(userNumber);
while (isNaN(userNumber) || userNumber < 1 || userNumber > 5) {
  alert("Inserisci un numero compreso tra 1 e 5");
  userNumber = prompt("Inserisci un numero compreso tra 1 e 5");
  console.log(userNumber);
}
// GENERO NUMERO RANDOM TRA 1 E 5 PER PC
let pcNumber = random1To5();
console.log(pcNumber);

// SOMMO NUMERO UTENTE E NUMERO PC
let sum = parseInt(userNumber) + parseInt(pcNumber);
console.log(sum);

// STABILISCO IL VINCITORE
let resultPari = isPari();
let resultDispari = isDispari();
// console.log(resultDispari, resultPari);
if (resultPari === true && userChoice === "pari") {
  document.write(
    "<br>" + "Complimenti... Hai vinto... è uscito un numero pari"
  );
} else if (resultPari === true && userChoice === "dispari") {
  document.write(
    "<br>" + "Mi dispiace... Hai perso... è uscito un numero pari"
  );
} else if (resultDispari === true && userChoice === "dispari") {
  document.write(
    "<br>" + "Complimenti... Hai vinto... è uscito un numero dispari"
  );
} else if (resultPari === false && userChoice === "dispari") {
  document.write(
    "<br>" + "Complimenti... Hai vinto... è uscito un numero dispari"
  );
} else if (resultDispari === false && userChoice === "pari") {
  document.write(
    "<br>" + "Complimenti... Hai vinto... è uscito un numero pari"
  );
} else if (resultDispari === true && userChoice === "pari") {
  document.write(
    "<br>" + "Mi dispiace... Hai perso... è uscito un numero dispari"
  );
}

// .....................................................................................................DEFINISCO LE FUNZIONI
// .....................................................................................................

// DEFINISCO LA FUNZIONE PER LA PAROLA PALINDROMA
function palindroma(argomento) {
  // PRENDO LA PAROLA E LA METTO IN UN ARRAY DIVIDENDOLA IN LETTERE
  let putInArray = argomento.split("");
  //   console.log(putInArray);

  // CREO UN NUOVO ARRAY CON I VALORI INVERTITI
  let parolaReverse = putInArray.reverse();
  //   console.log(parolaReverse);

  let parolaInvertita = parolaReverse.join("");
  //   console.log(parolaInvertita);

  // RENDO CASE SENSITIVE LE PAROLE PER IL CONFRONTO
  let parola1 = argomento.toUpperCase();
  let parola2 = parolaInvertita.toUpperCase();

  // CONFRONTO LE PAROLE
  if (parola1 === parola2) {
    return true;
  } else {
    return false;
  }
}

// DEFINISCO LA FUNZIONE NUMERO RANDOM DA 1 A 5
function random1To5() {
  let randomNumber = Math.floor(Math.random() * 5) + 1;
  //   console.log(randomNumber);
  return randomNumber;
}
// DEFINISCO LA FUNZIONE PARI O DISPARI
function isPari() {
  if (sum % 2 === 0) {
    return true;
  } else {
    return false;
  }
}

// DEFINISCO LA FUNZIONE PARI O DISPARI
function isDispari() {
  if (sum % 2 === 1) {
    return true;
  } else {
    return false;
  }
}
