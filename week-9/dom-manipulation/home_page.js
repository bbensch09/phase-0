// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:



// Release 1:

document.getElementById("release-0").classList.add("done");
// document.getElementById('release-0').className = "done";

// Release 2:

document.getElementById('release-1').style.display = 'none';


// Release 3:

// document.getElementById('test').className = "done";
document.getElementsByTagName('h1')[0].textContent = 'I completed release 3.';


// Release 4:

document.getElementById('release-3').style.backgroundColor = '#955251';


// Release 5:

var selected_elements = document.getElementsByClassName('release-4')

for (var i = 0; i < selected_elements.length; i++) {
  selected_elements[i].style.fontSize = '2em';
};

// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));