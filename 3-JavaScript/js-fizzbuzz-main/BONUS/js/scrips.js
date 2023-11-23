console.log("Ciao Cianuro,era meglio alcolizzarsi con il GIN FIZ");
const pElement = document.getElementById("lista");
console.log(pElement);
const a = "Fizz";
const b = "Buzz";

// for (let i = 1; i <= 100; i++) {
//   //   console.log(i);

//   if (i % 3 === 0 && i % 5 === 0) {
//     //   console.log(i, "FizzBuzz");
//     pElement.innerText += i + " " + a + " " + b + " ";
//     console.log(i, a + b);
//   } else if (i % 3 === 0 && !i % 5 === 0) {
//     //   console.log(i, "Fizz");
//     pElement.innerText += i + " " + a + " ";
//     console.log(i, a);
//   } else if (!i % 3 === 0 && i % 5 === 0) {
//     pElement.innerText += i + " " + b + " ";
//     console.log(i, b);
//   } else {
//     pElement.innerText += [i + " "] + " ";
//     console.log(i);
//   }
// }

// for (let i = 1; i <= 100; i++) {
//   //   console.log(i);

//   if (i % 3 === 0 && i % 5 === 0) {
//     //   console.log(i, "FizzBuzz");
//     pElement.innerHTML += " " + i + " " + a + " " + b + " ";
//     console.log(i, a + b);
//   } else if (i % 3 === 0 && !i % 5 === 0) {
//     //   console.log(i, "Fizz");
//     pElement.innerHTML += " " + i + " " + a + " ";
//     console.log(i, a);
//   } else if (!i % 3 === 0 && i % 5 === 0) {
//     pElement.innerHTML += " " + i + " " + b + " ";
//     console.log(i, b);
//   } else {
//     pElement.innerHTML += " " + i + " ";
//     console.log(i);
//   }
// }

for (let i = 1; i <= 100; i++) {
  //   console.log(i);

  if (i % 3 === 0 && i % 5 === 0) {
    //   console.log(i, "FizzBuzz");
    pElement.innerHTML += "<br>" + i + " " + a + b + " ";
    console.log(i, a + b);
  } else if (i % 3 === 0 && !i % 5 === 0) {
    //   console.log(i, "Fizz");
    pElement.innerHTML += "<br>" + i + " " + a + " ";
    console.log(i, a);
  } else if (!i % 3 === 0 && i % 5 === 0) {
    pElement.innerHTML += "<br>" + i + " " + b + " ";
    console.log(i, b);
  } else {
    pElement.innerHTML += "<br>" + i + " ";
    console.log(i);
  }
}
