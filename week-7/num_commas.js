// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with myself for 1.25 hrs
// Note - I requested permission from Emmanuel to not pair this week due to travels.
/*
// Pseudocode
1) convert integer to string
2) reverse the string
3) every 3rd letter, insert a comma
4) reverse the output back


// Initial Solution
*/

function separateComma(integer) {
  string = integer.toString();
  array = string.split("");
  reversed = array.reverse();
  for (var i = 3 ; i < reversed.length; i=i+4 ) {
    reversed.splice(i,0,",");
  };
  new_array = reversed.reverse();
  var result = new_array.join("");
  return result;

}


// Refactored Solution

function separateComma(integer) {
  inverted_array = integer.toString().split("").reverse();
  for (var i = 3 ; i < inverted_array.length; i=i+4 ) {
    inverted_array.splice(i,0,",");
  };
  return inverted_array.reverse().join("");

}


// Your Own Tests (OPTIONAL)
console.log(separateComma(123))
console.log(separateComma(1234))
console.log(separateComma(12345))
console.log(separateComma(123456))
console.log(separateComma(1234567))
console.log(separateComma(12345678))
console.log(separateComma(123456789))

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
- Even without looking back at my Ruby code, it was hard to totally start with a fresh perspective. I know that when I first did the ruby exercise, I was basically testing for the module of 3, but that turned out to be far less efficient than reversing the digits first, which I'd read about in doing peer reviews. I therefore I couldn't help but going with that approach here.

What did you learn about iterating over arrays in JavaScript?
I had to look up what the syntax for iterating over arrays was in Javascript, but fortunately sublime auto-fill helps you out a good deal once I started teh for () snippet. I would generally say iteration is very intutive regardless of the syntax, so not hard to apply the same logic for here.

What was different about solving this problem in JavaScript?
I think one of the core differences was that in Ruby it was possible to reverse a string, whereas Javascript required me to convert the string to an array first.

What built-in methods did you find to incorporate in your refactored solution?
I used split() to separate string by characters, join() to join them back together, reverse() to reverse the array for the sake of counting comma positions, and splice() to insert the commas every 4th digit.
*/