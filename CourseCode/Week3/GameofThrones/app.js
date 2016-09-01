"use strict";

var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    console.log(episodes[0].title);


	episodes.forEach(function (eachEpisode) {
		
		eachEpisode.star = "*";
		var numStars = eachEpisode.rating.round; 
			while (eachEpisode.star.length < numStars) {
				eachEpisode.star += "*";
			console.log(eachEpisode.star);
			};


		console.log(`Title: ${eachEpisode.title}  Episode: ${eachEpisode.episode_number}`);
		console.log(eachEpisode.description);
		console.log(`Rating: ${eachEpisode.rating} ${eachEpisode.star} \n`);

	});


}

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);

