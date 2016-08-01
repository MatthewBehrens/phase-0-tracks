# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# A /contact route that displays an address 
#(you can make up the address).
get '/contact' do
  "20231 Hazelcrest Road, Palatine IL 60074"
end

#A /great_job route that can take a person's name as a query parameter 
#(not a route parameter) and say "Good job, [person's name]!". 
#If the query parameter is not present, the route simply says "Good job!"

get '/great_job' do
  name1 = params[:name1]
  if name1
    "Good job, #{name1}!"
  else
    "Good job!"
  end
end

get '/add/:num1/:num2' do
  num1 = params[:num1]
  num2 = params[:num2]
  num1 = num1.to_i
  num2 = num2.to_i
  sum = num1 + num2
  sum = sum.to_s
  sum
end

