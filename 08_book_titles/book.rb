class Book
	attr_reader :title
	def title=(x)
		little_words = ['and', 'the', 'of', 'over', 'in', 'a', 'an']
		@title = x.capitalize.split.map{ |str| little_words.include?(str) ? str : str.capitalize }.join(' ')
	end
end