 // JavaScript Olympics

// I paired by myself on this challenge. Start tiem: 420pm

// This challenge took me [#] hours.


// Warm Up


// Bulk Up

var athletes = [
 { athlete_name: "Sarah Hughes", event: "Ladie's Singles"},
 { athlete_name: "Michael Phelps", event: "Mens 400M Medly"}
]
function win(array) {
  for (var i = 0; i < array.length; i++) {
    console.log(array[i].athlete_name + " won the " + array[i].event)
  };
}

win(athletes);


// Jumble your words

function reverse(string) {
  array = string.split("");
  reversed = array.reverse();
  console.log(reversed.join(""));
}

reverse("Jumble your words");

// 2,4,6,8

function evens_only(array) {
  for (var i = 0; i < array.length; i++) {
      if (array[i] % 2 == 1) {
        array.splice(i,1);
      };
    };
    console.log(array);
}

evens_only([1,2,3,4,5,6,7,8])

// "We built this city"

function Athlete (name,age,sport,quote){
  this.name = name,
  this.age = age,
  this.sport = sport,
  this.quote = quote
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
I solidified my understanding of using the constructor notation to create objects. I also was not at all impressed withe the instructions for this challenge. Release 4 really didn't tell you what to do with the drive code, so I played with it for awhile before realizing I needed to build a constructor function to make it run.

What are constructor functions?
Similar to the use of classes and instance variables in Ruby, constructor fucntions allow you to define the properties that an object will expect to have, so that you can create or initiate new versions of that object as many times as you want, in fewer lines of code.

How are constructors different from Ruby classes (in your research)?
Honestly they seem to be functional equivalents to me with different syntax at this point. This is what I found doign some research, but I don't fully understand and will plan to clarify during peer reviews.
    "The important difference is that the type of objects and interactions involved is different in both languages. Ruby uses objects inherited from Class to create new objects, whereas JS can either define literal objects, or invoke constructor functions (which are in turn objects themselves) to create new objects."

*/