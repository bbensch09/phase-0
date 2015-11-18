// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
First, will need to iterate through each voters ballot in the votes object, which consists of key-value pairs for office and candidate, and update the nested objects within voteCount for each office, which consistes of key-value pairs also of candidates and vote count.

Then will need to iterate through the result and assign the office chair to the candidate with the highest vote. Could either do this by sorting, but since I'm not super familiar with sorting by key-value values, we can also just setup an if statement which replaces the office if and only if the current candidate in the iteration has more votes than the current value for that office.
*/

// __________________________________________
// Initial Solution

var voteCounter = function(object) {

  for (var i in object) {
     for (var inner in object[i]) {
            if (voteCount[inner][object[i][inner]] === undefined) {
            voteCount[inner][object[i][inner]] = 0
            };
            voteCount[inner][object[i][inner]] += 1;
            };
  };
};

var assignOffices = function (object) {
  for (var office in voteCount) {
    for (var candidate in voteCount[office]) {
      if (officers[office] === undefined) {
        officers[office] = candidate;
      }
      if (voteCount[office][officers[office]] < voteCount[office][candidate]) {
        officers[office] = candidate;
      }
    }
  }
}

//Driver Code
// voteCounter(votes);
// console.log(voteCount);
// assignOffices(voteCount)
// console.log(officers);




// __________________________________________
// Refactored Solution
// Primary refactoring I did was to rename the iteration terms in first function to be far more intuitive semantically.

var voteCounter = function(object) {

  for (var voter in votes) {
     for (var office in votes[voter]) {
            if (voteCount[office][votes[voter][office]] === undefined) {
            voteCount[office][votes[voter][office]] = 0
            };
            voteCount[office][votes[voter][office]] += 1;
            };
  };
};

var assignOffices = function (object) {
  for (var office in voteCount) {
    for (var candidate in voteCount[office]) {
      if (officers[office] === undefined) {
        officers[office] = candidate;
      }
      if (voteCount[office][officers[office]] < voteCount[office][candidate]) {
        officers[office] = candidate;
      }
    }
  }
}
// DRIVER CODE
voteCounter(votes);
console.log(voteCount);
assignOffices(voteCount)
console.log(officers);

// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
- I learned or at least was reminded that it can get very confusing working with nested iterations, whether in JS or Ruby. To make it easier, choosing semantically intuitive element names (instead of just 'i' or 'inner') definitely helps.

Were you able to find useful methods to help you with this?
-I didn't really find any new built-in methods to help. I imagine there's a better way to do the if undefined step, but didn't have time to figure out what that is.

What concepts were solidified in the process of working through this challenge?
-Solidified the conscepts of replacing values with new values vs. pushing new values into an object.

*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
