puts "What is the hamsters name"
name = gets.chomp
puts "Volume level (from 1 to 10)"
volume = gets.chomp
puts "Fur color?"
color = gets.chomp
puts "Good for adoption? (T/F)"
adoption = gets.chomp
puts "Age of hamster"
age = gets.chomp
volume.to_i
age.to_i
if age == ""
	age = nil
end
print "Hamster's name: "
puts name
print "hamster's volume: "
puts volume
print "Hamster's color: "
puts color
print "Hamster's adoption: "
puts adoption
print "Hamster's age:"
puts age

