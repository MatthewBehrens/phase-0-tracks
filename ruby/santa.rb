class Santa

	def initialize (gender, ethnicity)
		@gender = gender
		@age = 0
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		p "Initializing Santa instance ...."
	end

	def speak
		p  "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookie_type)
		p "That was a good #{cookie_type}"
	end 

	def celebrate_birthday=(age)
		@age + 1
	end

	def get_mad_at=(name)
		name.array.insert(9, array.delete_at(@reindeer_ranking[name]))
	end

	def gender=(new_gender)
		@gender = new_gender
	end
end

santa1 = Santa.new("N/A", "N/A")
santa1.speak
santa1.eat_milk_and_cookies("Snickerdoodle")
santas = []
santas << Santa.new("agender", "black")
santa1.gender = "male"

p santas
