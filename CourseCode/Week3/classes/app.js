// app.js
var Animal = require("./lib/animal.js");

var dymitri = new Animal("Dymitri", "Huff.."); 

dymitri.makeNoise();
dymitri.shout();

var chewie = new Animal("Chewie", "Woof");

chewie.makeNoise();
chewie.shout();