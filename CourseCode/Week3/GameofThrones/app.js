"use strict";

var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    console.log(episodes[0].title);

    var findJonSnow = episodes.filter(function(ep){
    	return ep.description.includes("Jon Snow")

    });

	var filterLosers = findJonSnow.filter(function(ep) {
		return ep.rating >= 8.5;

	});

	var eps = filterLosers.sort(function (a, b){
		return a.episode_number - b.episode_number
	});



	filterLosers.forEach(function (eachEpisode) {
		
		eachEpisode.star = "*";
		var numStars = Math.round(eachEpisode.rating); 
			while (eachEpisode.star.length < numStars) {
				eachEpisode.star += "*";
			};

		console.log(`Title: ${eachEpisode.title}  Episode: ${eachEpisode.episode_number}`);
		console.log(eachEpisode.description);
		console.log(`Rating: ${eachEpisode.rating} ${eachEpisode.star} \n`);

	});
}

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);


