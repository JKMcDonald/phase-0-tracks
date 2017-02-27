// Define a function which passes a string
// assign the string to a variable 
// write a for loop going backward through the string for each letter
// return letters of the string as a new string but backward

function reverse(string) {
    var rev_string = "";
    for (var i = (string.length - 1); i >= 0; i -=1) {
        rev_string = rev_string + string[i];                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    }
        return rev_string
}
  var test = reverse("hello");

  console.log(test);



	if (1 == 1) {
		console.log('true');
	}
	
