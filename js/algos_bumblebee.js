// define a function with an array as the parameter. take each element of the array and measure its length then if it's greater than 0 store is at longest variable
// continue to go through each element of the array checking if it is larger than longest and if it is saving it as longest until you have gone through each value
// and have the longest string saved in the variable longest. return longest.



function longest_word(array) {
	var lgth = 0;
var longest;

for(var i = 0; i < array.length; i++){
    if(array[i].length > lgth){
        lgth = array[i].length;
        longest = array[i];
    }     
} 
  return longest; 
}

var array = ["aiusdhgiaeurb", "asuivnaer", "ytrjdjf", "oaicniuasebvsuydkvb", "nucanruivnra"]
console.log(longest_word(array))

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