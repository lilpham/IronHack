$(document).ready (function () {
	$(".js-search").on("click", search);
	$(".js-album-search").on("click", fetchAlbums);
	$(".js-album-tracks").on("click", fetchTracks);

});

function search (theEvent) {
	theEvent.preventDefault();

	console.log("Find Artist Click");

	var artist = $(".js-artist").val();

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${artist}`,
		success: showArtists,
		error: handleError	
	});

}

function showArtists (response) {
	console.log("Artist Info:");
	// console.log(response.artists.items);


	var artist = response.artists.items;
	//show artist found

	artist.forEach(function (theArtist) {
		if (theArtist.images[0]) {
			var html =
			`<li>
				<button class = "js-album-search" data-artistid = "${theArtist.id}">
				<h3> ${theArtist.name} </h3>
				</button>
				<br>			
				<img src = ${theArtist.images[0].url}>
			</li>`;
			$(".js-artist-list").append(html);
		}
	});

	$(".js-album-search").on("click", fetchAlbums);
}

function handleError (error) {
	console.log("error");
	console.log(error.ResponseText);
}

function fetchAlbums (theEvent) {

	console.log("Album Search Click");

	var artistId = $(theEvent.currentTarget).data("artistid");

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
		success: showAlbums,
		error: handleError	
	});
}

function showAlbums (response) {
	console.log("Album Info:");
	console.log(response.items);
	$(".js-album-list").empty( );


	var album = response.items;

	album.forEach(function (theAlbum) {
		if (theAlbum.images[0]) {
				var html =
				`<li>
					<button class = "js-album-tracks" data-albumid = "${theAlbum.id}">
					<h3> "${theAlbum.name}" </h3> </button>
					<br>			
					<img src = ${theAlbum.images[1].url}>
				</li>`;
				$(".js-album-list").append(html);
		}
	});

	$(".js-album-modal").modal("show");

}



function fetchTracks (theEvent) {

	console.log("Track List Click");

	var albumId = $(theEvent.currentTarget).data("albumid");

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/albums/${albumid}/tracks`,
		success: showTracks,
		error: handleError	
	});
}

function showTracks (response) {
	console.log("Track Info:");
	console.log(response);

	// var tracks = response;

	// tracks.forEach(function (theTrack) {
	// 	var html =
	// 	`<li>
	// 		<h4> "${theTrack}" </h4>
	// 		<br>			
	// 	</li>`;
	// 	$(".js-track-list").append(html);
	// });

	// $(".js-track-modal").modal("show");
}








