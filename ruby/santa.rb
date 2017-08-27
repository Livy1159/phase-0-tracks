class Santa
	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(gender, ethnicity)
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance..."
	end

	def about
		puts "Reindeer Ranking: #{@reindeer_ranking}"
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
	end
end

santa = Santa.new("female", "hispanic")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
santa.about
