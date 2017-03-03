application = {
	Name: "Kyle McDonald",
	Address: "20 lakeside drive, Rye, NY, 10580",
	Email: "Kyle2McDonald@gmail.com",
	Phone: "9144177703",
	Fave_shade_of_blue: "Indigo",
	Wallpaper_preference: "Chevrons",
	Ombre_is: "Fierce"
}

application[:Email] = "Kmacky2574"
p application
application[:hired] = TRUE
p application
p application[:Name] + application[:Address]
application["Kmacky2574"] = :Email
p application
