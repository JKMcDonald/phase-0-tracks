//checking for the longest string in an array 
//start by iterating through each element in array running .length on each of the elements of the array
// push each value into a new array then sort from smallest to largest in the array and returning the last index of the array as the answer


function longest_word(array) {
	var lgth = 0;
var longest;

for(var i = 0; i < array.length; i++){
    if(array[i].length > lgth){
        lgth = array[i].length;
        longest = array[i];
    }     
} 
  console.log(longest); 
}

// Finding a key value match 
// define a function for key value identifier
// cipher through two different hashes and identify if each pair is included in the other hash. 
//return true if there is a match, or false for every other possibility



function compare(hash, hash2) {
	var matched = false;
	for (var key in hash) {
		if (hash[key] == hash2[key])
			 matched = true;
		}
console.log(matched);
}

// Writing a  function that randomly generates test arrays for longest_word
//1 parameter that dictates how many words
// word length is randomly generated with letters of the alphabet and a random length from 1-10
//must generate and print an array

function generate_array(x) {
var array = [];
for(var i=0; i < x; i++) {
  var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    for (var j = 0; j < Math.floor(Math.random() * 9) + 1; j++) {
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    array.push(text)
}
console.log(array)
longest_word(array)
}
		


// testing with driver code ------------------------------------------------------------------------------------------------------------------------------------------------------------------

var test = ["hi whats up", "hello", "nothing to say but longest"]
var test1 = ["aiusnfiauenviuanerv", "aisnviuoaenrvuyabsdvuybaerv", "actually writing some words to be longer to test this thing", "asdvuybaeuvaerv", "Hello, how are you?"]
var test2 = ["hi", "hello", "nope", "sup", "dude", "yes", "nothing", "okay"]

longest_word(test);
longest_word(test1);
longest_word(test2);

var tester1 = {name: "Glenna", gender: "female"}
var tester2 = {name: "Alison", gender: "female"}
var tester3 = {name: "Ben", gender: "male"}

compare(tester1, tester2);
compare(tester2, tester3);

generate_array(8)






	