def running_block
	num = 3
	p "This is before running the block"
	num.times { yield }
	p "This is after running the block"
end
running_block {p "This is the block" }

each_array = ["Cat", "Dog", "Fish"]
each_hash = {
	name: "Joe",
	age: 13,
	address: "123 Main Street"
}

p "iterate through an array using .each"
p each_array
each_array.each do |animal|
	puts animal
end
p each_array

p "iterate through a hash using .each"
p each_hash
each_hash.each do |key, data|
	puts "#{key}: #{data}"
end

p 'Iterate through an array using .map!'
p each_array
each_array.map! do |animal|
	puts animal
	animal.next
end
p each_array

puts "Release 2"
integers = [1,2,3,4,5,6,7,8,9,10]
puts "1: delete_if{|item| block}"
puts integers
puts "if less than 3 delete"
integers.delete_if{|int| int <  3}
puts integers

puts "2: keep_if {|item| block}"
puts "if less than 7 keep"
integers.keep_if{|integ| integ < 7}
puts integers

puts "3: bsearch{|x| block}"
search = integers.bsearch {|x| x >= 1}
puts search 


