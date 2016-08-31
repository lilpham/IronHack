var averageColon = require("./lib/average_colon.js");

var nums = '80:70:90:100';
var nums2 ='';
var nums3 = '80&70&90&100'
var nums4 = '80:70&90:100'

console.log( averageColon(nums) === 85 );
// true

console.log( averageColon(nums2) === 0 );
console.log( averageColon(nums3) === 85 );
console.log( averageColon(nums4) === 85 );
