console.log("Ciao Cianuro, buona fortuna");
const a = "Fizz";
const b = "Buzz";
for (let i = 1; i <= 100; i++) {
  //   console.log(i);
  if (i % 3 === 0 && i % 5 === 0) {
    //   console.log(i, "FizzBuzz");
    console.log(i, a + b);
  } else if (i % 3 === 0 && !i % 5 === 0) {
    //   console.log(i, "Fizz");
    console.log(i, a);
  } else if (!i % 3 === 0 && i % 5 === 0) {
    console.log(i, b);
  } else {
    console.log(i);
  }
}
