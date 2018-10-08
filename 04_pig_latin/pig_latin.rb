#write your code here
def translate string
	string = string.split(" ")
	word_count = []
	string.each do |word|
		word = word.split("")
		word = find_qu word
		first_consonant = first_constanant word
		flipped_array = break_up_string(first_consonant, word)
		new_word = piggie_word flipped_array
		word_count.push(new_word)
	end 
	if word_count.length > 1
		make_string word_count
	else
		return word_count[0]
	end
end

def first_constanant array
	vowels = ["a", "e", "i", "o", "u",]
	cut_index = vowels.map { |letter| array.find_index(letter)}
	reduced_index = []
	cut_index.each do |x|
		if x != nil
			reduced_index.push(x)
		end	
	end
	reduced_index = reduced_index.min { |a, b| a.to_s <=> b.to_s }
	return reduced_index
end

def break_up_string(consonant_index, string)
	number = consonant_index.to_i
	front_part = string.slice(0, number)
	back_part = string.slice(number, string.length)
	return back_part + front_part
end

def piggie_word array
	piggie_string = String.new
	array.each do |letter|
		piggie_string = piggie_string.to_s + letter.to_s
	end
	piggie_string = piggie_string + "ay"
	return piggie_string
end

def make_string piggie_array
	final_string = String.new
	piggie_array.each do |word|
		final_string = final_string + word + " "
	end
	return final_string.chop
end

def find_qu array
	vowels = ["a", "e", "i", "o", "u",]
	number = array.find_index { |x| x=="q"}
	is_vowel = false
	if number != nil
		if array[number-1] != nil && number != 0
			vowels.each do |vowel|
				if array[number-1] == vowel 
					is_vowel = true
				end
			end
			if is_vowel == false
				array[number] = array[number-1] + array[number]
			end
		end
		array[number+1] = array[number].to_s + array[number+1].to_s
		array = array.slice(number.to_i+1, array.length-1)
	end
	puts array.to_s
	return array
end






