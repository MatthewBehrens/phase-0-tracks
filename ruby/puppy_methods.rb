class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak (int)
  	int.times do |i|
  		p "Woof!"
  	end
  end

  def roll_over
  	p "*rolls over*"
  end

  def dog_years (human_years)
  	dog_age = human_years * 7
  	p "I am #{dog_age} years old in dog years"
  end

  def eat_food (food)
  	p "My favorite food is #{food}"
  end

  def initialize ()
  	p "Initializing new puppy instance ..."
  end

end 

Fido = Puppy.new
Fido.fetch ("Toy")
Fido.speak (4)
Fido.roll_over
Fido.dog_years(2)
Fido.eat_food("tacos")

class Car 

  	def initialize ()
  	p "Initializing new car instance ..."
  	end

	def tires (tire_brand)
		 p "Car tire brand is: #{tire_brand}"
	end

	def people_fit (people)
		p "This car can fit #{people} number of people"
	end
end

car_array = []
50.times do |i|
	p "Car #{i+1}"
	i = Car.new
	car_array << i
end

p car_array

car_array.each do |x|
	x.tires ("Michellin")
	x.people_fit(3)
end







