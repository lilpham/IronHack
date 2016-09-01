// app.js

"use strict";

var fs = require("fs");

fs.readFile("movies.txt", "utf8", function(theError, movieFileContents){
	if (theError === null) { 
		var moviesArray = movieFileContents.split("\n");
		console.log(moviesArray);
	}
	else {
		console.log("Uh oh. Error")
		console.log( theError );
	}

});


var read = require("read")

var theOptions = { prompt: "What is your name?"};

function greetUser (theError, givenName) {
	console.log(`Hello, ${givenName}.`);
}

read(theOptions, greetUser);

//

function shout (){
	console.log("5 seconds");
}
setTimeout(	shout, 5000);




console.log("");
console.log("END OF PROGRAM");
console.log("");