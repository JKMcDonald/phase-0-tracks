beach_club = {
	Cabana: ['fridge', 'bathroom', 'chairs', 'mirrors'],
	Beach: ['chairs', 'umbrellas'],
	Cafateria: ['food', 'beverage', 'snack machine', {ice_cream: 'flavors'}]
}

p beach_club[:Cabana][2]
p beach_club[:Cafateria][3][:ice_cream]
p beach_club[:Beach][1]