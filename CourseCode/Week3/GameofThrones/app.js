"use strict";

var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    console.log(episodes[0].title);


	episodes.forEach(function (eachEpisode) {
		console.log(eachEpisode.title);
		console.log(eachEpisode.description);
		console.log(eachEpisode.rating);
		console.log(eachEpisode.episode_number);

	});
}

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);

