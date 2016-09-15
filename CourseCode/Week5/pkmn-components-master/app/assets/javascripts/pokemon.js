PokemonApp.PokemonComponent = class {
	constructor (pokemonUri) {
		this.id = PokemonApp.idFromUri(pokemonUri);
	}

	render () {
		console.log(`PokemonComponent renderin pokemon #${this.id}`");
	}
};

// Input: "v1/pokemon/57"
// Output: 
PokemonApp.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};

$(document).ready(function (){
	$(".js-show-pokemon").on("click", function (){
		console.log("CLICK");
	});

});