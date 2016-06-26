def build_array (ary,arr,arry)
	building = [ary, arr, arry]
end

def add_to_array(array, value)
	array << value
end
new_array = []
p new_array
new_array << "item one"
new_array << "item two"
new_array << "item three"
new_array << "item four"
new_array << "item five"
p new_array
new_array.delete_at(2)
p new_array
new_array.insert(2, "new item")
p new_array
new_array.shift
p new_array
p new_array.fetch(100, "item two")
another_array = ["item six", "item seven", "item eight"]
together_array = new_array + another_array
p together_array
p build_array(1, "two", nil)
p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)

