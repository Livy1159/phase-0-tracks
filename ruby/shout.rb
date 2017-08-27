# module Shout
  
#   def self.yell_angrily(words)
#     puts "#{words}" + "!!!" + " :("
#   end

#   def self.yelling_happily
#   	puts "Woohoo!!"
#   end

# end

# Shout.yell_angrily("You dang kids")
# Shout.yelling_happily

module Shout
	def yell_angrily(words)
    	puts "#{words}" + "!!!" + " :("
   	end

   	def yelling_happily
      	puts "Woohoo!!"
   	end
end

	class Sports_fan
		include Shout
	end

	class Parent
		include Shout
	end


sports_fan = Sports_fan.new
sports_fan.yell_angrily("Why won't he pass the ball???")
sports_fan.yelling_happily

parent = Parent.new
parent.yell_angrily("Stop picking on your little brother")
parent.yelling_happily