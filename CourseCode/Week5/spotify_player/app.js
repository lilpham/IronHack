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

	var result = response.tracks.items[0];
	console.log(result);

	console.log("Track title:");
	console.log(result.name)

	$(".js-track-title").html(result.name);

	console.log("Artist Name:");
	console.log(result.artists[0].name);

	$(".js-artist-name").html(result.artists[0].name);

	console.log("Album Image:");

	$(".js-cover-img").attr("src",result.album.images[0].url);

	console.log(result.preview_url);
	$(".js-audio").attr("src",result.album.preview_url);

}

function handleError (error) {
	console.log("Error");
	console.log(error.ResponseText);
}



