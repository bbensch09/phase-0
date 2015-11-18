/*
Gradebook from Names and Scores

I worked on this challenge [by myself, with:]
This challenge took me [#] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

function average(array) {
  return  array.reduce(function (a,b) { return a + b; }) / array.length;
};

var gradebook = {}
gradebook["Joseph"] = {};
gradebook["Susan"] = {};
gradebook["William"] = {};
gradebook["Elizabeth"] = {};

gradebook["Joseph"]["testScores"] = scores[0];
gradebook["Susan"]["testScores"] = scores[1];
gradebook["William"]["testScores"] = scores[2];
gradebook["Elizabeth"]["testScores"] = scores[3];

gradebook["addScore"] = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

gradebook["getAverage"] = function(name) {
  return average(this[name]["testScores"]);
}

// gradebook.addScore("Susan", 80) // would push the score 80 into the value of gradebook.Susan.testScores.
// console.log(gradebook);






// __________________________________________
// Refactored Solution

function average(array) {
  return  array.reduce(function (a,b) { return a + b; }) / array.length;
};

var gradebook = {
  "Joseph": {"testScores": scores[0]},
  "Susan": {"testScores": scores[1]},
  "William": {"testScores": scores[2]},
  "Elizabeth": {"testScores": scores[3]},

  "addScore": function(name, score) {
  gradebook[name]["testScores"].push(score);
    },
  "getAverage": function(name) {
  return average(this[name]["testScores"]);
    }
}


// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?
I learned that in order to push values to a nested object, if that nested object is named with a string, I needed to call the string explicitly using bracket notation, otherwise I'd get an error with the push.

How did you iterate over nested arrays in JavaScript?
I iterated through the nested array by using the reduce function, which uses an implicit callback function and takes the first two element of an array and performs a calculation, in this case summation, and returns it back to the function before moving on to the next element. I put this outsie the actual object as a global function and then called it within the gradebook object.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?
I learned how to use the reduce function, as explained above.
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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)