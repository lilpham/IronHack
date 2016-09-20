// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).on("turbolinks:load" , function() {

	$(".js-btn-add-ing").on("click", fetchIngredient)

function fetchIngredient (theEvent){
	console.log("Add Ingredient click");
	theEvent.preventDefault();

	var ingredient_id = $(theEvent.currentTarget).data("adding")
	var sandwich_id = $(theEvent.currentTarget).data("sandwichid")


	$.ajax ({
		type: "POST",
		url: `/api/sandwiches/${sandwich_id}/ingredients/add`,
		success: addIngredient,
		error: handleError,
	});

}

function handleError (error) {
	console.log("error");
	console.log(error.ResponseText);
}

function addIngredient (response) {
	console.log("Add Ingredient Clicked Again")


}


});

