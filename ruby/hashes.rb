#Ask for user input for various client details.
#Set the user input equal to a variable.

puts "What is the client's name?"
name = gets.chomp.to_s

puts "How old is #{name}?"
age = gets.chomp.to_i

puts "How many children does #{name} have?"
number_of_children = gets.chomp.to_i

puts "What color scheme does #{name} prefer?"
color_scheme = gets.chomp.to_s

user_input = false
puts "Is #{name} prepared to start the design process?(yes/no)"
ready = gets.chomp.to_s
if ready == "yes"
  user_input = true
else
  user_input = false
end

#Create a hash that takes the user input and sets it to the values of the keys.
client_details = {
  :name => "#{name}",
  :age => "#{age}",
  :number_of_children => "#{number_of_children}",
  :color_scheme => "#{color_scheme}",
  :ready_to_start => "#{user_input}"
}
#Print the current hash
p client_details

#Ask the user if they want to update and details.
#Go through the various possibilities and set user input to different variables based on what they choose.
#If the user doesn't want to update, make "none" exit the program.

puts "Which client detail would you like to update?"
change = gets.chomp
  if change == "name"
    puts "What is the client's name?"
    name = gets.chomp.to_s
  elsif change == "age"
    puts "How old is #{name}?"
    age = gets.chomp.to_i
  elsif change == "number_of_children"
    puts "How many children does #{name} have?"
    number_of_children = gets.chomp.to_i
  elsif change == "color_scheme"
    puts "What color scheme does #{name} prefer?"
    color_scheme = gets.chomp.to_s
  elsif change == "ready_to_start"
    puts "Is #{name} prepared to start the design process?(yes/no)"
    ready = gets.chomp.to_s
      if ready == "yes"
        user_input = true
      else
        user_input = false
      end
  elsif change == "none"
  end

#Update the hash.
client_details[:name] = "#{name}"
client_details[:age] = "#{age}"
client_details[:number_of_children] = "#{number_of_children}"
client_details[:color_scheme] = "#{color_scheme}"
client_details[:ready_to_start] = "#{user_input}"

#Print the current hash.

p client_details