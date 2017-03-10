// loop through the string and do a for loop returning it in reverse

function reverse(string) {
		new_string = "";
		for (var i = (string.length - 1); i > -1; i-=1){
			new_string += string[i];
		}
return new_string;
}

var reverse = reverse("hello");
console.log(reverse)

function if_true() {
	if (1==1){
		return true;
	}
}

console.log(if_true())