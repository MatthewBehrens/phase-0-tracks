# Car class
# three attributes that vary 
# 	make
# 	year
# 	color

# three methods
# 	accelerate
# 	brake
# 	change oil

class Car

	attr_reader :make, :year, :color
	attr_writer :make, :year, :color

	def initialize(name)
		@name = name
		puts "Making a new car class"
	end

	def car_make
		@car_make = make
	end

	def car_year
		@year = year
	end

	def car_color
		@color = color
	end

	def accelerate
		puts "Car is speeding up"
	end

	def brake
		puts "Car is slowing down"
	end

	def oil
		puts "Car's oil is changed"
	end
end
status = ""
until status == "done"
	p "Do you want to make a new car?"
	status = gets.chomp
	if status == "yes"
		p "Enter name of car for the class"
		name = gets.chomp
		p "Enter make of the car"
		make = gets.chomp
		p "Enter year for the car"
		year = gets.chomp
		year = year.to_i
		p "Enter color of the car"
		color = gets.chomp
		car_array = []
		hold = Car.new(name)
		hold.make = make
		hold.year = year
		hold.color = color
		car_array << hold
		
	elsif status == "no"
		p "program will now exit"
		p car_array
		status = "done"
		car_array.each{|i| p i }
	else
		p "Enter either 'yes' or 'no'"
	end
end






