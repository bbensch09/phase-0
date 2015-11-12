var prompt = require('prompt');
prompt.start();

// prompt.get(['guess'], function(err, result) {
//   console.log('You guessed:');
//   console.log(result.guess  );
// });

// prompt.get(['guess'], function(err, result) {
//   user_guess = result.guess;
//   console.log(user_guess);
// });

function getRandomNumber( upper ) {
  var num = Math.floor(Math.random() * upper) + 1;
  return num;
}

console.log(getRandomNumber(10));





///OLD SAMPLE CODE

 // var prompt = require('prompt');

 //  prompt.start();

  // prompt.get(['input'], function (err, result) {
  //   console.log('Command-line input received:');
  //   console.log('  Username: ' + result.input);
  //   // console.log('  Email: ' + result.email);
  // });

  // function onErr(err) {
  //   console.log(err);
  //   return 1;
  // }

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