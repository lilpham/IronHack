PokemonApp.PokemonComponent = class {
	constructor (pokemonUri) {
		this.id = PokemonApp.idFromUri(pokemonUri);
	}

	render () {
		console.log(`PokemonComponent render in pokemon #${this.id}`);

		$.ajax ({	
			type: "GET",
			url: `api/v1/pokemon/${this.id}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError
		});
	}
};

PokemonApp.showPokemonModal = function (result) {
	console.log("Pokemon Info:");
	console.log(result);

	$(".js-pokemon-modal").modal("show");
};

PokemonApp.handleError = function (theError) {
	console.log("Pokemon component error");
	console.log(theError.responseText);
};

// Input: "v1/pokemon/57"
// Output: 
PokemonApp.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};

$(document).ready(function (){
	$(".js-show-pokemon").on("click", function (theEvent){
		console.log("CLICK");
		
	// date-pokemon-uri="api/v1/pokemon/57"

	var theUri = $(theEvent.currentTarget).data("pokemon-uri"); 

	var pokeComponent = new PokemonApp.PokemonComponent( theUri );
		pokeComponent.render();
	});

});