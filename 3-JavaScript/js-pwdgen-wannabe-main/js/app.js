console.log(
  "prendo elemento html con id first-name e lo assegno alla sua variabile"
);
let name = document.getElementById("first-name");
console.log("Chiedo il Nome all'utente");
firstName = prompt("Inserisci il tuo nome");
console.log("imposto innerHTML di name");
name.innerHTML = firstName;

console.log(
  "prendo elemento html con id first-name e lo assegno alla sua variabile"
);
let lastName = document.getElementById("last-name");
console.log("Chiedo il Cognome all'utente");
surname = prompt("Inserisci il tuo Cognome");
console.log("imposto innerHTML di Last Name");
lastName.innerHTML = surname;

console.log(
  "prendo elemento html con id my-color e lo assegno alla sua variabile"
);
let myColor = document.getElementById("my-color");
console.log("Chiedo all'utente il suo colore preferito");
color = prompt("Inserisci il tuo colore preferito");
console.log("imposto innerHTML di my-color");
myColor.innerHTML = color;

console.log(
  "prendo elemento html con id my-number e lo assegno alla sua variabile"
);
let myNumber = document.getElementById("my-number");
console.log("Chiedo all'utente il suo numero preferito");
number = prompt("Inserisci il tuo numero preferito");
console.log("imposto innerHTML di my-color");
myNumber.innerHTML = number;

console.log("prendo elemento html con id psw1 e lo assegno alla sua variabile");
let psw1 = document.getElementById("psw1");
let cianuro = "PSW 1: ";
console.log("genero la psw in base ai dati ricevuti");
password1 = cianuro + firstName + surname + color + number;
console.log("imposto innerHTML di psw1");
psw1.innerHTML = password1;

console.log("prendo elemento html con id psw2 e lo assegno alla sua variabile");
let psw2 = document.getElementById("psw2");
let cianuro2 = "PSW 2: ";
console.log("genero la psw in base ai dati ricevuti");
password1 = cianuro2 + surname + color + number + firstName;
console.log("imposto innerHTML di psw2");
psw2.innerHTML = password1;

console.log("prendo elemento html con id psw2 e lo assegno alla sua variabile");
let psw3 = document.getElementById("psw3");
let cianuro3 = "PSW 3: ";
console.log("genero la psw in base ai dati ricevuti");
password1 = cianuro3 + number + surname + color + firstName;
console.log("imposto innerHTML di psw3");
psw3.innerHTML = password1;

console.log("prendo elemento html con id psw4 e lo assegno alla sua variabile");
let psw4 = document.getElementById("psw4");
let cianuro4 = "PSW 4: ";
console.log("genero la psw in base ai dati ricevuti");
password1 = cianuro4 + color + number + surname + firstName;
console.log("imposto innerHTML di psw4");
psw4.innerHTML = password1;

console.log("prendo elemento html con id psw5 e lo assegno alla sua variabile");
let psw5 = document.getElementById("psw5");
let cianuro5 = "PSW 5: ";
console.log("genero la psw in base ai dati ricevuti");
password1 = cianuro5 + firstName + color + number + surname;
console.log("imposto innerHTML di psw5");
psw5.innerHTML = password1;
