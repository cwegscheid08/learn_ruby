#write your code here
def add x, y
	return x.to_i + y.to_i
end

def subtract x, y
	return x.to_i - y.to_i
end

def sum numbers
	end_array = false
	add_number = 0

	while not end_array
		if numbers == nil
			return 0
			exit
		end

		add_number = add_number + numbers.last.to_i

		numbers.pop

		if numbers.length > 0
			end_array = false
		elsif numbers.length == 0
			end_array = true
		end
	end 

	return add_number
end

def multiply numbers
	end_array = false
	product = 1

	while not end_array
		if numbers == nil
			return 0
			exit
		end

		product = product * numbers.last.to_i

		numbers.pop

		if numbers.length > 0
			end_array = false
		elsif numbers.length == 0
			end_array = true
		end
	end

	return product
end

def power x, y
	return x**y
end

def factorial number
	#total = 0
	end_number = false
	
	if number == 1
		return 1
		exit
	elsif number == 0
		return 0
		exit
	end

	if number >= 2
		slide = []
		slide.push(number)
		
		while slide.length < number.to_i
			last = (slide.last.to_i - 1)
			slide.push(last.to_i)
		end

		total = 1
		while not end_number
			total = total.to_i * slide.last.to_i
			if slide.length <= 1
				end_number = true
			elsif slide.length > 1
				end_number = false
			end
			slide.pop
		end

	end
	return total
end


#factorial(5)
