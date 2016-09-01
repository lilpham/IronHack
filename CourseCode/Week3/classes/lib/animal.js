// lib/animal.js

function Animal (name, noise) {
	// @name = name
	this.name = name

	// @noise = noise
	this.noise = noise

} // end

//def make_noise
Animal.prototype.makeNoise = function () {
	//puts "#{name} says: #{noise}"
	console.log( this.name + "says:" + this.noise );
}; 

//def shout
Animal.prototype.shout = function () {
	//puts @noise.upcase
	console.log( this.noise.toUpperCase() );
}; 
