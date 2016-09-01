// lib/animal.js

"use strict";

class Animal {
	constructor (name, noise) {

		// @name = name
		this.name = name;

		// @noise = noise
		this.noise = noise;

	} // end

	//def make_noise
	makeNoise () {
		//puts "#{name} says: #{noise}"
		console.log( this.name + " says: " + this.noise );
	} 

	//def shout
	shout () {
		//puts @noise.upcase
		console.log( this.noise.toUpperCase() );
	}
}

module.exports = Animal;
//when you pull in the animals class, you are pulling in 'Animal'