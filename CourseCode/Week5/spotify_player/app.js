$(document).ready(function (){
	$(".js-search").on("click", searchTrack)

});

function searchTrack (theEvent) {
	theEvent.preventDefault();

	console.log("Search Button Click");

	var trackInput = $(".js-track-search").val();


	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=track&query=${trackInput}`,
		success: showResult,
		error: handleError	
	});
}

function showResult (response) {
	console.log(respone);
}

function handleError (error) {
	console.log("Error");
	console.log(error.ResponseText);
}
