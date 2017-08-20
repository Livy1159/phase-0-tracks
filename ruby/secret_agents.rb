
def encrypt(str)
alphabet = "abcdefghijklmnopqrstuvwyxz"
index = 0
  while index < str.length
    index2 = 0
    found = -1
    while index2 < alphabet.length
      if str[index] == alphabet[index2]
        found = index2
        if found == 25
          found = 0
        else
          found += 1
        end
      end
      index2 += 1
    end
    if found != -1
      str[index] = alphabet[found]
    end
    index += 1
  end
end


def decrypt(str)
alphabet = "abcdefghijklmnopqrstuvwyxz"
index = 0
  while index < str.length
    index2 = 0
    found = -1
    while index2 < alphabet.length
      if str[index] == alphabet[index2]
        found = index2
        if found == 0
          found = 25
        else
          found -= 1
        end
      end
      index2 += 1
    end
    if found != -1
      str[index] = alphabet[found]
    end
    index += 1
  end
end

puts "Would you like to decrypt or encrypt a password?"
user_input = gets.chomp
	if user_input == "encrypt" || user_input == "decrypt"
		puts "Please enter your password."
		password = gets.chomp.to_s
	else
	end
	 if user_input == "encrypt"
		  encrypt(password)
		  "This is your encrypted password: #{encrypt(password)}"
	 elsif user_input == "decrypt"
		  decrypt(password)
		  "This is your decrypted password: #{decrypt(password)}"
	 end
	

