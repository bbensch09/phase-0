 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: The prisoner wants to guess the guards secret number, which is a number between 1 and 10. If he does, he'll be able to escape. With each guess, the guard will say higher, lower, or correct. After 3 guesses the guard chooses a new secret number. The prison has one chance to beg, which earns him a 4th guess. He can only beg once per game.
// Overall mission: Escape from prison!
// Goals: Guess the guard's password before it changes.
// Characters: Guard, prisoner
// Objects: Guard, Prisoner
// Functions: Guess, Create Names, Beg (optional)

// Pseudocode
//create Guard object; has attributes of name and secret number, which contains a counter property
//create Prisoner object; has attributes of name, status
//create Guess function which takes an input of integer, compares it to the secret number and updates both the secret number's counter and the prisoners status
//create Beg function, which allows the prisoner to speak his plea, and then enter one more guess
//

// Initial Code
// var Guard = {
//   name: "Guard";


// }


// Initial Code

function randomNumber(upper) {
  return Math.floor( Math.random() * upper ) + 1;
}
var counter = 0;
while ( counter < 10) {
  var randNum = randomNumber(10);
  document.write(randNum);
  counter += 1;
}

// Refactored Code

var randomNumber = getRandomNumber(10);
var guess;
var guessCount = 0;
var correctGuess = false;

function getRandomNumber( upper ) {
  var num = Math.floor(Math.random() * upper) + 1;
  return num;
}

while (guessCount < 10) {
  guess = prompt('I am thinking of a number between 1 and 10. What is it?');
  guessCount += 1;
  if (parseInt(guess) === randomNumber) {
    correctGuess = true;
    break;
  }
}

if (correctGuess) {
  console.log('You guessed the number!');
  console.log('It took you ' + guessCount + ' tries to guess the number ' + randomNumber);
} else {
  console.log("Sorry,you did not guess the number");
}



// Refactored Code






// Reflection
//
//
//
//
//
//
//
//