def echo string
	return string
end

def shout string
	return string.upcase
end

def repeat(string, number=1)
	if number.to_i > 1 
		return ((string + " ")*(number.to_i-1))+string
	else
		return string + " " + string
	end
	return string
end

def start_of_word(string, number)
	if number.to_i == 1
		return string[number.to_i-1]
	else
		slide = 0
		cut = String.new
		while slide < number
			cut = cut + string[slide]
			slide = slide.to_i+1
		end
		return cut
	end
end

def first_word string
	string = string.split(" ")
	return string[0]
end

def titleize string
	start = String.new + first_word(string)
	string = string.split(" ")
	caps = String.new
	start_used = false
	string.each do |word|
		if word == start and start_used == false
			word[0] = start_of_word(word, 1).capitalize
			word = word + " "
			caps = word
			start_used = true
		elsif word != "and" && word != "over" && word != "the"	
			word[0] = start_of_word(word, 1).capitalize
			word = word + " "
			caps = caps + word
		else
			word = word + " "
			caps = caps + word
		end
	end
	
	

	return caps.chop
end