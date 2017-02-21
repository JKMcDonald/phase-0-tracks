var colors = ["blue", "red", "green", "yellow"]
var names = ["Fred", "Bill", "Alex", "Ernie"]

// console.log(colors)

colors.push["orange"]
names.push["Gretta"]

// console.log(colors)


// iterate over names adding them to a hash object 

function make_hash(colors, names) {
	var new_object = {};
	for( i = 0; i < colors.length; i++) {
		var current_name = names[i];
		var current_color = colors[i];
		new_object[current_name] = current_color;
}
return new_object
}

function Car(name, year, revEngine) {
	console.log("Our new car:", this);
	this.name = name;
	this.year = year;
	this.revEngine = revEngine;

	this.tirespin = (function() { console.log("vimvimvimvim!"); });
	console.log("CAR INITIALIZATION COMPLETE");
}

var newCar = new Car("Birdie", 1988, true);
console.log(newCar);
newCar.tirespin();


var car = {
	name: 'Chevy',
	'year': 1999,
	revEngine: true,
		rev: function() {
			if (this.revEngine) {
				console.log("vroooooooom!");
		}	else {
			console.log("putputputput");
			}
		}
};




// Driver code --------------------------------------------------------------------
if (colors.length == names.length) {
	console.log(make_hash(colors, names))
}

car.rev()