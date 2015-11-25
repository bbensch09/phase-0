// PSEUDOCODE

/*
Create a new list object that contains functions for the following:
- Add an item with a quantity to the list
- Remove an item from the list
- Update quantities for items in your list
- Print the list
*/

// INITIAL SOLUTION

/*
var my_list = {
  "addItem": function(item,quantity) {this[item] = quantity;},
  "updateItem": function(item,quantity) {this[item] = quantity;},
  "removeItem": function(item) {this[item] = 0;},
  "print": function() {
    console.log("test");
    for (var i = 0; i < this.length; i++) {
    console.log(this);
  }
}
  // {console.log(this);}
  // {for (items in list) {console.log("This list contains things." + items)}
}

// function addItem(item, quantity) {
//   this.item = quantity;
// }

my_list.addItem('beer',3);
my_list.addItem('apples',3);
my_list.addItem('salad',1);
my_list.addItem('pasta',2);
my_list.removeItem('apples');
console.log(my_list);

console.log("-----BREAK----")
*/
// REFACTORED SOLUTION
// re-wrote solution using prototypes and with printouts for each function

function GroceryList(name) {
  this.list = {};
  this.name = name;
}

GroceryList.prototype.addItem = function (item, quantity) {
  this.list[item] = quantity;
  console.log("Added " + quantity + " of " + item + ".");
}

GroceryList.prototype.removeItem = function (item) {
  delete this.list[item];
  console.log(item + " has been deleted..");
}

GroceryList.prototype.updateQuantity = function (item, quantity) {
  if (this.list.hasOwnProperty(item)) {
    this.list[item] = quantity;
    console.log("The amount of " + item + " is now updated to " + quantity + ".");
  } else {
    console.log("Cannot update because this list does not contain any " + item + ". Please add it first.")  ;
  }
}

GroceryList.prototype.print = function () {
  console.log(this.name + " contains:");
  for (var item in this.list) {
    console.log("- " + this.list[item] + " of " + item);
  }
}

// DRIVER code
var list1 = new GroceryList("Brian's list");
var list2 = new GroceryList("Christina's list");

list1.addItem("turkey", 1);
list1.addItem("mashed potatoes", 1);
list1.addItem("gravy", 3);
list1.addItem("pumpkin pie", 1);
list1.removeItem("gravy");
list1.updateQuantity("turkey", 2);
list1.updateQuantity("ham", 2);
list2.addItem("salad", 4);
list1.print();
list2.print();

// REFLECTION
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
- I solidified my understanding of how to create prototype functions. Similar to how I would otherwise define class-level methods in Ruby, I ultimately created a bunch of prototype functions for all grocery lists, enabling the driver code to add/remove/update/print items from the list.

What was the most difficult part of this challenge?
- I got pretty confused when originally putting the functions into the same object as the list itself (as in my initial solution), because then when printing the object I'd end up printing the functions as well, which was not desirable.

Did an array or object make more sense to use and why?
- An object made most sense because our list was made up primarily of string values as items, with a numerical quantity for each of them. An array wouldn't have made as much sense since the item types do not need to maintain any specific order.
*/