puts "How many employees will be processed?"
employees = gets.chomp
employees = employees.to_i
x = 0
until x == employees
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp
	puts "What year were you born?"
	year = gets.chomp
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp
	user = ""
	until user == "done"
		puts "List any allergies (type done when finished)"
		user = gets.chomp
		if user == "sunshine"
			allergies = "sunshine"
		end
	end
	age = age.to_i
	year = year.to_i
	if allergies == "sunshine"
		result = "probably a vampire"
	else
		result = ""
		if  (age == (2016 - year)) && ((garlic == "yes") || (insurance == "yes"))
			result = "probably not a vampire"
		end
		if  ((age != (2016 - year)) && (garlic == "no")) || (insurance == "no")
			result = "probably a vampire"
		end
		if (age != (2016 - year)) && (garlic =="no") && (insurance == "no")
			result = "Almost certainly a vampire."
		end
		if name == "Drake Cula" || name == "Tu Fang"
			result = "Definitely a vampire."
		end
		if result == ""
			puts "results inconclusive"
		end
	end
	puts result
	x = x + 1 
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."