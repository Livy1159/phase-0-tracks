
# - Put a starting point for the index
# - Delete first letter of string
# - Use -1 to get the the last character and combine it with .next feature.

#encrypt: 
# => set index as 0
# => define method with str as input
# => use the [1...x] method to first letter
# => use -1 index to find last letter and combine with .next to find next letter
# => call method

#decrypt:
# => set index as 0
# => define method with str as input
# => set alphabet variable
# => find index number of letter before first letter of string. Use that number in alphabet index. Combine with...
# => delete last letter with index [0..-2]
# => call method

#cheating method:
#def encrypt(str)
#    str[0].next + str[1].next + str[2].next
#    if str[0] == "z"
#      "a" + str[1].next + str[2].next
#    else
#      str[0].next + str[1].next + str[2].next
#    end
#  end
#p encrypt("zed")

#encrypt method works, but needs conditional logic for the letter "z"
def encrypt(str)
index = 0
  while index < str.length
  str[index].next
  index += 1
  end
end
#p encrypt("abc")
#p encrypt("zed")

#intial attempt. not correct. haven't updated yet.
def decrypt(str)
  alphabet = "abcdefghijklmnopqrstuvwyxz"
  alphabet[alphabet.index(str[0])-1] + str[0..-2]
end
#p decrypt("bcd")
#p decrypt("afe")

# Driver Code
#Ask user if they want to encrypt or decrypt. 
# If they do, run if statements to ask for passwords. if not, end.
# If they enter encrypt or decrypt, run corresponding program and print results.

puts "Would you like to decrypt or encrypt a password?"
user_input = gets.chomp
	if user_input == "encrypt" || user_input == "decrypt"
		puts "Please enter your password."
		password = gets.chomp
	else 
	end
	if user_input == "encrypt"
		encrypt(password)
#won't return encrypted password. Decrypt does work.
		"This is your encrypted password: #{encrypt(password)}"
	elsif user_input == "decrypt"
		decrypt(password)
		"This is your decrypted password: #{decrypt(password)}"
	end
	

