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

var Prisoner = {
  name: "Prisoner Pete",
  status: "captive",
  guessCount: 0,
  correctGuess: false
}

var Guard = {
  name: "Guardian Greg",
  secretNumber: makeSecretNumber(10)
}

function makeSecretNumber( max ) {
  var secret = Math.floor(Math.random() * max + 1);
  return secret;
}

while (Prisoner.guessCount < 4) {
  guess = prompt("If you can guess my secret number between 1 and 10, you'll be freed. You have 4 tries. What is it?");
  Prisoner.guessCount += 1;
  if (parseInt(guess) === Guard.secretNumber) {
    Prisoner.correctGuess = true;
    break;
  }
}

console.log('The secret number was ' + Guard.secretNumber);
if (Prisoner.correctGuess) {
  console.log("Congrats, you're now free!");
  console.log('It took you ' + Prisoner.guessCount + ' tries to guess the number ' + Guard.secretNumber);
} else {
  console.log("Sorry,you guessed wrong and are still captive.");
}

// REFACTORED CODE
// I removed Prisoner.status in the first object as it turned out to be redundant and unnecessary.
// I also removed prisoner and guardian names as initial properties. Instead I kept Guardian Greg as fixed text and allowed the user to choose their name.

var Prisoner = {
  guessCount: 0,
  correctGuess: false
}

var Guard = {
  secretNumber: makeSecretNumber(10)
}

function chooseName() {
  Prisoner.name = prompt("Choose a name")
}

function makeSecretNumber( max ) {
  var secret = Math.floor(Math.random() * max + 1);
  return secret;
}

chooseName();

while (Prisoner.guessCount < 4) {
  guess = prompt("Welcome to prison " + Prisoner.name + ". I am Guardian Greg. If you can guess my secret number between 1 and 10, you'll be freed. You have 4 tries. What is it?");
  Prisoner.guessCount += 1;
  if (parseInt(guess) === Guard.secretNumber) {
    Prisoner.correctGuess = true;
    break;
  }
}

console.log('The secret number was ' + Guard.secretNumber);
if (Prisoner.correctGuess) {
  console.log("Congrats, you're now free!");
  console.log('It took you ' + Prisoner.guessCount + ' tries to guess the number ' + Guard.secretNumber);
} else {
  console.log("Sorry,you guessed wrong and are still captive.");
}


/*
// Reflection
What was the most difficult part of this challenge?
-This was a very difficult challenge. As you can see from comparing my pseudocode vs what I was actually able to build, I was far more ambitious in what I thought would be achievable, and ran out of time to finish the game. The code currently lets the prisoner guess 4 times, and they either are freed or remain captive. I wasn't able to build in the "beg" function, nor was I able to make the game continue after one round of guessing. The most difficult part was deciding whether I should be running this in Chrome console or node. I had some trouble figuring out the way to use prompts in node.js, and so ultimately went with the console approach. Additionally, I ran into a number of cases when I ran an infinite loop, which crashed my shell a few too many times.

What did you learn about creating objects and functions that interact with one another?
-It takes careful planning an a thorough understanding of when functions are passing through vs. changing actual variables, and my understanding is only partially there. Since I had limited time this week to due travels, I'm very much going to dig into this further next week.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
- I don't know that I learned any new built-in methods in Javascript during this challenge.

How can you access and manipulate properties of objects?
- You access properties of obejects by calling Object.property and can manipulate it by setting it equal to some new value.

*/