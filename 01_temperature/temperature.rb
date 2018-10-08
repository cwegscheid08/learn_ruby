#write your code here
def ftoc temp
	fahrenheit = temp.to_f
	fraction = 5.0/9.0
	celcius = (fahrenheit-32)*fraction
	celcius.to_i
end

def ctof temp
	celcius = temp.to_f
	fraction = (9.0/5.0)
	fahrenheit = (celcius*fraction)+32
	fahrenheit
end

#ftoc(gets.chomp)