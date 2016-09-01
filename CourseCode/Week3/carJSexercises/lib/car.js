"use strict";

class Car {
	constructor (model, noise, wheels) {

		this.model = model;
		this.noise = noise;
		this.wheels = wheels;

	}

	carNoise () {
		console.log( `${this.model} has ${this.wheels} wheels and makes a ${this.noise} sound`);
	}
	
}

module.exports = Car;