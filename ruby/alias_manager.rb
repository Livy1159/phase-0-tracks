
#Failed attemp at switching vowels.

#def vowel_switch(str)
#vowels = "aeiou"
#index = 0
#  while index < str.length
#    index2 = 0
#    found = -1
#    while index2 < vowels.length
#      if str[index] == vowels[index2]
#        found = index2
#        if found == 4
#          found = 0
#        else
#          found += 1
#        end
#      end
#      index2 += 1
#    end
#    if found != -1
#      str[index] = vowels[found]
#    end
#    index += 1
#  end
#end
#p vowel_switch("olivia")

#Switch first name and last name

#def switch_names(str)
#  str.split.reverse.join(" ")
#end

#switch_names("olivia morgan")

#Alternative of switching vowels and cosonants because stuck
#This will reverse the first and last name as well as reverse the order of the letters.
#It will also star out any vowels
def name_switch(str)
  name_hash = Hash.new,
  str.reverse.tr("\\^aeiou", "*")
end

puts "What is the real name?"
name = gets.chomp.to_s
p name_switch("#{name}")

name.split(" ").each do |name, fake_name|
  name_switch("#{name}")
  puts "#{fake_name} is actually #{name}."
end



puts "What is the real name?"
name = gets.chomp
until name == ""
  if name == ""
  else 
  fake_name = name_switch("#{name}")
  end
end

name.split(" ").each do |name, fake_name|
  name_switch("#{name}")
  puts "#{fake_name} is actually #{name}."
end



#Work on getting name and fake_name to store in hash.