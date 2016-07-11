
class TodoList

	def initialize (items)
		@list_array = items
	end

	def get_items ()
		@list_array
	end

	def add_item(item)
		@list_array.push(item)
	end

	def delete_item(item2)
		@list_array.delete(item2)
	end

	def get_item (num)
		@list_array[num]
	end
end


