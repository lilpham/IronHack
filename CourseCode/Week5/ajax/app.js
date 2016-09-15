console.log("We are WERQin");

$(document).ready(function(){
	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-add-yoda").on("click", addYoda);
	$(".js-add-new-character").on("click", addNewCharacter);
});

function fetchCharacters () {
	console.log("Fetch Characters Click");

	//AJAX CODE HERE
	$.ajax ({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError
	});
}

function showCharacters (response) {
	var charactersArray = response

	charactersArray.forEach(function  (theCharacter){
		var html = 
		`<li> 
			<h2> ${theCharacter.name} </h2>
			<h2> ${theCharacter.occupation} </h2>
			<h2> ${theCharacter.weapon} </h2>
		 </li>`;
		$('.js-characters-list').apppend(html);
	});

	console.log(charactersArray);
}

function handleError (error) {
	console.log("error");
	console.log(error.responseText);
}

function addYoda () {

	var newCharacter = {
		name: "Yoda",
		occupation: "Jedi",
		weapon: "Lightsaber"
	};

	//ADD AJAX CODE
	$.ajax ({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newCharacter,
		success: updateList,
		error: handleError
	});
}

function updateList (response) {
	console.log("create yoda success");
	console.log(response);
}

function addNewCharacter (theEvent) {
	theEvent.preventDefault();

	var newFormCharacter = {
		name: $(".js-name").val(),
		weapon: $(".js-weapon").val(),
		occupation: $(".js-occupation").val()
	};
	//AJAX CODE HERE

	$.ajax ({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newFormCharacter,
		success: updateList,
		error: handleError
	});
}

