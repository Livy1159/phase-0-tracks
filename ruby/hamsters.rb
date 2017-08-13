puts "What is the hamster's name?"
name = gets.chomp

puts "On a scale of 1 to 10, how loud is the hamster?"
loudness = gets.chomp.to_i
  
  
puts "What is the hamster's fur color?"
color = gets.chomp

puts "Is this hamster a good adoption candidate?"
adoption = gets.chomp
  if adoption == "yes"
    answer = true
  elsif adoption == "no"
    answer = false
  end

puts "What is the hamster's estimated age?"
number = gets.chomp.to_i
  if number == ""
    number = nil
  end
  
  puts "This hamster's name is #{name} and he/she is #{number} years old. They have gorgeous #{color} fur and their loudness level on a scale of 1 to 10 (10 being the loudest) is #{loudness}.  True or false: is #{name} a good candidate for adoption? #{answer}."