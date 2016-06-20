def encrypt ()
	#ask for word to encrypt
	#get word
	#until an index gets to the amount of letters in the given word, get the next letter and add one to the index
	#print the word
	p "what to encrypt?"
	encrypt = gets.chomp
	index = 0
	while index < encrypt.length
		encrypt[index] = encrypt[index].next
		index += 1
	end
	puts encrypt
end

def decrypt ()
	#ask user what to decrypt
	#get word
	#while the index is less than the word length
		#get the letter of the index
		#find that letter in the alphabet and note its position
		#minus the position by one
		#find the new position in the alphabet
		#index + 1
	p "what to decrypt?"
	decrypt = gets.chomp
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	letter = ""
	while index < decrypt.length
		letter = decrypt[index] 
		number = alphabet.index(letter)
		number = number - 1
		print alphabet[number]
		index += 1
	end
end
#puts encrypt
#puts decrypt
p "Would you like to encrypt or decrypt a password?"
input = gets.chomp
if input == "encrypt"
	puts encrypt
elsif input == "decrypt"
	puts decrypt
else
	p "invalid input"
end

