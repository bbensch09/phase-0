function secretNumber(upper) {
  return Math.floor( Math.random() * upper ) + 1;
}
var counter = 0;
while ( counter < 10) {
  var randNum = secretNumber(10);
  document.write(randNum);
  counter += 1;
}

// Refactored Code

var secretNumber = getSecretNumber(10);
var guess;
var guessCount = 0;
var correctGuess = false;

function getSecretNumber( upper ) {
  var num = Math.floor(Math.random() * upper) + 1;
  return num;
}

while (guessCount < 10) {
  guess = prompt("If you can guess my secret number between 1 and 10, you'll be freed. What is it?");
  guessCount += 1;
  if (parseInt(guess) === secretNumber) {
    correctGuess = true;
    break;
  }
}

if (correctGuess) {
  console.log("Congrats, you're now free!");
  console.log('It took you ' + guessCount + ' tries to guess the number ' + secretNumber);
} else {
  console.log("Sorry,you guessed wrong and are still captive.");
}