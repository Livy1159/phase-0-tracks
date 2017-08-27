module Shout
  
  def self.yell_angrily(words)
    puts "#{words}" + "!!!" + " :("
  end

  def self.yelling_happily
  	puts "Woohoo!!"
  end

end

Shout.yell_angrily("You dang kids")
Shout.yelling_happily