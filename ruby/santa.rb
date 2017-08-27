class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	
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

	def celebrate_birthday
		@age += 1
		puts "Santa is #{@age}"
	end

	def get_mad_at(name)
		if @reindeer_ranking.include? name
			@reindeer_ranking.delete("#{name}")
			@reindeer_ranking.insert(-1, name)
			puts "#{name}, you have really disappointed me! Here are the new rankings: #{@reindeer_ranking}"
		end
	end

	def gender
		@gender
	end
end

# santa = Santa.new("female", "white")
# santa.eat_milk_and_cookies("snickerdoodle")
# santa.about
# santa.celebrate_birthday
# santa.get_mad_at("Vixen")
# santa.gender = "male"
# puts "Santa now identifies as #{santa.gender}."
# santa.age

# santa = Santa.new("female", "white")
# santa.celebrate_birthday
# santa.about

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas.sample(4)


