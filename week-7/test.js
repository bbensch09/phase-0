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