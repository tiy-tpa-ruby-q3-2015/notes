const cost = 42;

// if (cost === 42) {
//   console.log("The cost was correct");
// } else {
//   console.log("The cost was incorrect");
// }

// const array = [1,2,3];
//   // initializer  condition         incrementer
// for (var i = 0;   i < array.length; i++) {
//   console.log(array[i] * cost);
// }

i = 0;

while (true) {
  console.log(i);
  i += 2;
  if (i > cost) {
    console.log("Breaking out because i is " + i);
    break;
  }
  console.log("About to loop");
}
console.log("Outside the loop");
