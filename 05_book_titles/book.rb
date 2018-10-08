class Book
	attr_accessor :title
	
	def title
		words = @title.split(" ")
		if words.count <= 1
			return @title.capitalize
		else
			mult_word = []
			non_caps_words = ["and", "in", "the", "of", "a", "an"]
			number = 1
			words.each do |word|
				
				if non_caps_words.count(word.to_s) > 0 && number > 1
					mult_word.push(word)
					number = number.to_i + 1
				elsif non_caps_words.count(word.to_s) == 0
					mult_word.push(word.capitalize)
					number = number.to_i + 1
				elsif number == 1
					mult_word.push(word.capitalize)
					number = number.to_i + 1
				end
			end
			return mult_word.join(" ")
		end
	end
end