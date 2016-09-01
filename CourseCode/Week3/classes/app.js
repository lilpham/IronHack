// app.js

var dymitri = {
	name: "Dymitri",
	noise: "Huff..."

	makeNoise: function () {
		console.log(this.name + "says:" + this.noise );
	},
	shout: function () {
		console.log( this.name.toUpperCase() );
	}
};

dymitri.makeNoise();
dymitri.shout();

var chewie = {
	name: "Chewie",
	noise: "Woof",

	makeNoise: function() {
		console.log(this.name + "says:" + this.noise );
	}
	shout: function () {
	console.log( this.noise.toUpperCase() );
	}
};

chewie.makeNoise();
chewie.shout();