def word(word)
	@word =  word
	@hidden_word = @word.gsub(/[#{word}]/, '_ ')
	p @hidden_word
end

def check_letter(letter)
	if @word.include? letter
		print @word.gsub(/[#{letter}]/, '#{letter} ')
	end
	@guess_count += 1
	if @guess_count == @word.length + 2
		@game_over = true
	else
		false
	end
end


word("jello")

