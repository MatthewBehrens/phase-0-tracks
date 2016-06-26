#ask for name
	#get name
#ask for address
	#get address
#ask for age
	#get age
#ask for number of children
	#get number of children
#ask for decor theme
	#get decortheme
#ask for if married
	#get if married
#print hash back out
#ask user to update key
	#if none skip it
	#if key entered ask for new value
#print out new version of hash
#exit
def to_boolean(str)
     return true if str=="true"
     return false if str=="false"
     return nil
end
p "What is your name?"
name = gets.chomp
p "What is your address?"
address = gets.chomp
p "What is your age?"
age = gets.chomp
age = age.to_i
p "number of children?"
children = gets.chomp
children = children.to_i
p "what is your decor theme?"
theme = gets.chomp
p "Are you married?(true/false)"
marriage = gets.chomp
marriage = to_boolean(marriage)

client = {
  name: name, 
  address: address,  
  age: age, 
  number_of_children: children,
  decor_theme: theme, 
  married: marriage
}

p client
p "Which key do you want to update? (enter none to skip)"
update = gets.chomp
if update == "none"
	return nil
else
	p "Enter new value"
	value = gets.chomp
	client[update.to_sym] = value
end
p client 
