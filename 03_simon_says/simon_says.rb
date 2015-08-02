def echo(word)
	word
end
def shout(word)
	word.upcase
end
def repeat(word, times=2)
	repeat = word + " "
	result = (repeat * times).strip
	return result 
end
def start_of_word(string, length)
	return string[0..length-1]
end
def first_word(string)
	array = string.split(" ")
	return array[0]
end
def titleize(string)
	array = string.split(" ")
	little_words = ['the','and','a','an','is','in','of','or','over']
	result = ""
	
	array.each do |word|
		if ((little_words).include?(word))
			word.downcase
		else
			word.capitalize!
		end
	end
	
	array[0].capitalize!
	
	array.each do |word|
		result += word + " "
	end
	
	return result.strip
end