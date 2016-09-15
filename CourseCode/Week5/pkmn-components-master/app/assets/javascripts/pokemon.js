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

	console.log(`Name: ${result.name}`)
	$(".js-poke-name").html(result.name);

	console.log(`Number: ${result.pkdx_id}`)
	$(".js-poke-number").html(`${result.pkdx_id}`);

	console.log(`Height: ${result.height}`)
	$(".js-poke-height").html(result.height);

	console.log(`Weight: ${result.weight}`)
	$(".js-poke-weight").html(result.weight);

	$(".js-poke-hp").html(result.hp);
	$(".js-poke-attack").html(result.attack);
	$(".js-poke-defense").html(result.defense);
	$(".js-poke-sp-atk").html(result.sp_atk);
	$(".js-poke-sp-def").html(result.sp_def);
	$(".js-poke-speed").html(result.speed);
	$(".js-poke-type1").html(result.types[0].name);

	console.log(result.types[0].name)
	if (result.types[1] !== undefined) {
		$(".js-poke-type2").html(result.types[1].name)
	}
	
	$(".js-pokemon-modal").modal("show");
};

PokemonApp.PokemonEvolutions = function (id, info) {
	this.id = id;
	this.info = info;

	console.log(id);
	console.log(info);
};


PokemonApp.PokemonEvolutions.prototype.render = function() {
	console.log("Rendering evolutions for: #" + this.id);

	$.ajax ({	
			type: "GET",
			url: `api/v1/pokemon/${this.id}`,
			success: PokemonApp.PokemonEvolutions,
			error: PokemonApp.handleError
		});

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

	$(".js-pokemon-evolutions").on("click", function (theEvent){
		console.log("Click Evolutions")
	});
		
	// date-pokemon-uri="api/v1/pokemon/57"

	var theUri = $(theEvent.currentTarget).data("pokemon-uri"); 

	var pokeComponent = new PokemonApp.PokemonComponent( theUri );
		pokeComponent.render();
	});

});