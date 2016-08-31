function countColors (Color, colorArray){
	var count = 0;

	//color_array.each do |the_color|
	colorArray.forEach(function (the_color) {
		if (the_color === Color) {
			// count += 1
			count +=1; 
		} //end

	}); //end



	return count;
}

module.exports = countColors;