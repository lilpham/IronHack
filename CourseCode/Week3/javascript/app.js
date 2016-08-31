// require_relative("lib/color_counter.rb")
var countColors = require("./lib/count_colors.js");

// color_array = ["indigo", "teal", "lilac", "periwinkle", "teal", "black", "baby bluet", "teal"]
var colorArray = ["indigo", "teal", "lilac", "periwinkle", "teal", "black", "baby bluet", "teal", "periwinkle"]

// p color_array
console.log( colorArray);


// p the_counting_machine.count_colors("indigo", color_array) == 1
console.log( countColors("indigo", colorArray) === 1 );
console.log( countColors("periwinkle", colorArray) === 2 );
console.log( countColors("teal", colorArray) === 3 );

console.log( countColors("green", colorArray) === 0 );
console.log( countColors("navy blue", colorArray) === 0 );

// caps_colors = color_array.map do |the_color| 
var capsColor = colorArray.map(function(theColor){
	//the_color.upcase
	return theColor.toUppercase();
}); // end

// p caps_colors
console.log(capsColor);
