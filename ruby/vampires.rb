employees_processed = 0

puts "How many employees will be processed?"
number_of_employees = gets.chomp.to_i

until employees_processed == number_of_employees
  employees_processed = employees_processed + 1
  puts "What is your name?"
  name = gets.chomp
  if name == "Drake Cula"
    vampire_name = true
  elsif name == "Tu Fang"
    vampire_name = true
  else
    vampire_name = false
  end
  
  current_year = 2017

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year_born = gets.chomp.to_i

  if current_year - year_born == age
    vampire_age = true
  else
    vampire_age = false
  end


  puts "Would you like some garlic bread? (yes/no)?"
  garlic_answer = gets.chomp

  if garlic_answer == "yes"
    eats_garlic = true
  else
    eats_garlic = false
  end


  puts "Would you like to enroll in the company health insurance? (yes/no)?"
  insurance_answer = gets.chomp

  if insurance_answer == "yes"
    wants_insurance = true
  else
    wants_insurance = false
  end
  
  puts "Do you have any allergies? (Type 'done' when no more allergies)"
  allergies = gets.chomp
  if allergies == "sunshine"
    puts "Probably a vampire"
    break
  end
  
  until allergies == "done"
  puts "Any other allergies?"
  other_allergies = gets.chomp
    if other_allergies == "sunshine"
      puts "Probably a vampire."
    break
    elsif other_allergies == "done"
    break
    end
  end
  
  if vampire_name
    puts "Definitely a vampire."
  elsif vampire_age && (wants_insurance || eats_garlic)
    puts "Probably not a vampire."
  elsif vampire_age && !(wants_insurance || eats_garlic) 
    puts "Probably a vampire."
  elsif !(vampire_age) && !(eats_garlic && wants_insurance)
    puts "Almost certainly a vampire."
  else
    puts "Results inconclusive."
  end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."