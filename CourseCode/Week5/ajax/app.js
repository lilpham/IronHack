console.log("We are WERQin");

$(document).ready(function(){
	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-add-yoda").on("click", addYoda);
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
		$('.js-characters-list').append(html);
	});

	console.log(charactersArray);
}

function handleError (error) {
	console.log("error");
	console.log(error.responseText);
}

function addYoda () {
	console.log("Add Yoda Click");

	//ADD AJAX CODE
}