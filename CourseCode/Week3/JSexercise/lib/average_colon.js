function averageColon (numbers){

	var array = numbers.split(":");


	var avg = array.reduce(function(a,b) {
		return parseInt(a) + parseInt(b);
	});
	return avg/(array.length);
}

module.exports = averageColon;