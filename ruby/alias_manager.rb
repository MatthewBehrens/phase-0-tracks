def fake_name(name)
	vowels = ["a","e","i","o","u"]
	consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	firstlast = name.split(' ') 	#split name into two parts
	firstlast[0], firstlast[1] = firstlast[1], firstlast[0] # swap first and last name
	swapname = firstlast.join(" ") 	#convert from array to string
	swapname.downcase!
	letters = swapname.split('')	#split the swaped first and last name to letters
	letters = letters.map do |letter|
		if letter == "a"
			letter = "e"
		elsif letter == "e"
			letter = "i"
		elsif letter == "i"
			letter = "o"
		elsif letter == "o"
			letter = "u"
		elsif letter == "u"
			letter = "a"
		elsif letter == "b"
			letter = "c"
		elsif letter == "c"
			letter = "d"
		elsif letter == "d"
			letter = "f"
		elsif letter == "f"
			letter = "g"
		elsif letter == "g"
			letter = "h"
		elsif letter == "h"
			letter = "j"
		elsif letter == "j"
			letter = "k"
		elsif letter == "k"
			letter = "l"
		elsif letter == "l"
			letter = "m"
		elsif letter == "m"
			letter = "n"
		elsif letter == "n"
			letter = "p"
		elsif letter == "p"
			letter = "q"
		elsif letter == "q"
			letter = "r"
		elsif letter == "r"
			letter = "s"
		elsif letter == "s"
			letter = "t"
		elsif letter == "t"
			letter = "v"
		elsif letter == "v"
			letter = "w"
		elsif letter == "w"
			letter = "x"
		elsif letter == "x"
			letter = "y"
		elsif letter == "y"
			letter = "z"
		elsif letter == "z"
			letter = "b"
		elsif letter == " "
			letter = " "
		end
	end
	place = letters.join('')
	final_name = place.split.each{|i| i.capitalize!}.join(' ')
	p final_name
end

fake_name("Felicia Torres")

reply = ""
store = []

while reply != "quit"
p "Enter your own secret name to change"
reply = gets.chomp
store << "#{fake_name(reply)} is actually #{reply}"
p "enter another? (type quit to exit)"
reply = gets.chomp
end
p store
