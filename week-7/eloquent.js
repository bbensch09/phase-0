// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var touchdown = 7
var fieldgoal = 3
var points = touchdown + fieldgoal
console.log(points)

// prompt("What's your favorite food?")
// console.log("Hey! That's my favorite too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// array=(1..20).map do |x|
//   if x % 3 ==0 && x % 5 ==0
//      'bizz-buzz'
//    elsif x % 3 == 0
//      'bizz'
//    elsif x % 5 == 0
//      'buzz'
//    else x
//   end
// end

// for (var i = 1; i <= 100; i++) {
//   if (i % 3 == 0 && i % 5 == 0)
//     console.log('FizzBuzz');
//   else if (i % 3 == 0)
//     console.log('Fizz');
//   else if (i % 5 ==0)
//     console.log('Buzz');
//   else console.log(i);
// }


// Functions

// Complete the `minimum` exercise.

function min(x,y) {
  return Math.min(x, y);
};
console.log(min(3,-10))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Brian Bensch",
  age: 28,
  favorite_foods: ['brie cheese', 'ribeye', 'pesto'],
  quirk: ["I've cut my own hair for the last 12 years, saving at least a few thousand dollars."]
};

console.log(me)