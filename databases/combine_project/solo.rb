# Write a program that will store customers data 
# also retreive that data given an input of an exisiting piece of info

# the user can determine when to add, retrieve or exit the program
# returns all data from the given retrieve prompt (i.e city will return all customers located in the given city)

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("store.db") # create a store database
db.results_as_hash = true

#command to create customers table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS customers(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    address VARCHAR(100),
    city VARCHAR(45),
    phone VARCHAR(15)
  )
SQL

# method to create a customer
def create_customer(db, first, last, address, city, phone)
  db.execute("INSERT INTO customers (first_name, last_name, address, city, phone) VALUES (?, ?, ?, ?, ?)", [first, last, address, city, phone])
end

#==================================================
# MAIN PROGRAM BELOW
#==================================================

p "Type 'create' to make a new customer, type 'retrieve' to find an existing customer, or 'exit' to quit."
input = gets.chomp
if input == "create"
	#creates db if it does not exist
	db.execute(create_table_cmd)
	#=========================
	# gets customer data
	#=========================
	p "enter first name"
	first = gets.chomp
	p "enter last name"
	last = gets.chomp
	p "enter address"
	address = gets.chomp
	p "enter city"
	city = gets.chomp
	p "enter phone number"
	phone = gets.chomp
	#==========================
	#creates the customer and stores into db
	create_customer(db, first, last, address, city, phone)
elsif input == "retrieve"
	p "Enter what type of info you know. i.e first name, last name, address, city, or phone"
	enter = gets.chomp
	if enter == "first"
		p "Enter first name"
		first1 = gets.chomp
		customers = db.execute("SELECT * FROM customers WHERE first_name = (?)", [first1])
	elsif enter == "last"
		p "Enter last name"
		last1 = gets.chomp
		customers = db.execute("SELECT * FROM customers WHERE last_name = (?)", [last1])
	elsif enter == "address"
		p "Enter address"
		address1 = gets.chomp
		customers = db.execute("SELECT * FROM customers WHERE address = (?)", [address1])
	elsif enter == "city"
		p "Enter city"
		city1 = gets.chomp
		customers = db.execute("SELECT * FROM customers WHERE city = (?)", [city1])
	elsif enter == "phone"
		p "Enter phone number"
		phone1 = gets.chomp
		customers = db.execute("SELECT * FROM customers WHERE phone = (?)", [phone1])
	else
		p "Please enter either 'first', 'last', 'address', 'city', or 'phone'"
	end
		customers.each do |customer|
		puts "Name: #{customer['first_name']} #{customer['last_name']}"
		puts "Address: #{customer['address']}"
		puts "City: #{customer['city']}"
		puts "Phone number: #{customer['phone']}"
	end
elsif input == "exit"
	p "Program will now exit"
else 
	p "Please enter either 'create','retrieve', or 'exit'"
end

		

