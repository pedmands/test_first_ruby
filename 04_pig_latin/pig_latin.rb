# def translate(s)
# 	words = s.split
# 	pigified = []
# 	
# 	for word in words
# 		if word[/^[aeiou]/]
# 			word = word+"ay"
# 		else
# 		  if word[/^[qu]/]
# 			  word.slice!(/^qu/)
# 			  ending = "quay"
# 		  else
# 			  ending = word.slice!(0...(word.index(/[aeiou]/,1)))+"ay"
# 		  end
# 		  word = word << ending
# 	    end
# 		pigified << word
# 	end
# 	return pigified.join(" ")
# end

# I became stuck on the last test, so upon researching possible solutions on github, I came accross this beautiful and elegant solution by aroth:
# https://github.com/arioth/the-odin-project/blob/master/learn_ruby/04_pig_latin/pig_latin.rb

def translate(string)
	string.split.map { |str| str[/[^(qu)([^aeiou])](.*)\z/] + str[/\A((.*)(qu)|[^aeiou]+)/].to_s + 'ay' }.join(' ')
end