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
var prompt = require('prompt');
prompt.start();

var Guard = {
  name: "Guardian Greg",
  secret_number: 0
}

var Prisoner = {
  name: "Prisoner Pete",
  status: "captive"
}

var guess_count = 0
var guesses_left = 3 - guess_count

Guard.secret_number = Math.floor(Math.random() * 10) + 1;
console.log(Guard.secret_number);

// function setSecretNumber( upper ) {
//   var Guard.secret_number = Math.floor(Math.random() * upper) + 1;
//   return num;
// }
// console.log(setSecretNumber(10));

// while (guess_count < 4 ) {
  prompt.get(['guess1'], function prisonerGuess (err,number) {
  var current_guess = number.guess1;
  console.log(current_guess);
  guesses_left = guesses_left - 1;
  if (Guard.secret_number == current_guess) {
      Prisoner.status = "free";
      console.log('Congratulations, you are now ' + Prisoner.status);
      }
    else {console.log("I'm sorry that was incorrect. You have " + guesses_left + " guesses remaining.");}
  });



// BROWSER CONSOLE CODE --> THIS WORKS

// var secretNumber = getSecretNumber(10);
// var guess;
// var guessCount = 0;
// var correctGuess = false;

// function getSecretNumber( upper ) {
//   var num = Math.floor(Math.random() * upper) + 1;
//   return num;
// }

// while (guessCount < 10) {
//   guess = prompt("If you can guess my secret number between 1 and 10, you'll be freed. What is it?");
//   guessCount += 1;
//   if (parseInt(guess) === secretNumber) {
//     correctGuess = true;
//     break;
//   }
// }

// if (correctGuess) {
//   console.log("Congrats, you're now free!");
//   console.log('It took you ' + guessCount + ' tries to guess the number ' + secretNumber);
// } else {
//   console.log("Sorry,you guessed wrong and are still captive.");
// }



// Refactored Code





/*
// Reflection
What was the most difficult part of this challenge?
-This was a very difficult challenge. As you can see from my pseudocode the amount of code that's left commented, I was far more ambitious in what I thought would be achievable, and ran out of time to finish the game. All the code currently does is let the prisoner guess once, and they either are freed or remain captive. The most difficult part was figuring out the way to use prompts in node.js, because it didn't just work out of the box as it did in Codecademy. Additionally, I ran into a number of cases when I ran an infinite loop, which crashed my shell a few too many times.

What did you learn about creating objects and functions that interact with one another?
-It takes careful planning an a thorough understanding of when functions are passing through vs. changing actual variables, and my understanding is only partially there. Since I had limited time this week to due travels, I'm very much going to dig into this further next week.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
- I didn't learn any new built-in methods.

How can you access and manipulate properties of objects?
- You access properties of obejects by calling Object.property and can manipulate it by setting it equal to some new value.

*/