#switch first name and last name
#change vowels to next vowel in aeiou
#change cosonants to next in alphabet

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
  str.reverse.tr("\\^aeiou", "*")
end


puts "What is the real name?"
name = gets.chomp.to_s
while name != "quit"
  p name_switch("#{name}")
puts "Any other names?"
other_name = gets.chomp
  p name_switch("#{other_name}")
  if other_name || name == "quit"
  end
  break

end