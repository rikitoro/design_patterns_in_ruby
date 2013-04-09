require 'activity_pattern'
require 'food_habitat'

def new_animal(diet, awake)
	animal = Object.new
	
	if diet == :meat
		animal.extend(Carnivore)
	else
		animal.extend(Herbivore)
	end
	
	if awake == :day
		animal.extend(Diurnal)
	else
		animal.extend(Nocturnal)
	end
	
	animal
end
