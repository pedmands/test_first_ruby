def add(x,y)
	return x + y
end
def subtract(x,y)
	return x - y
end
def sum(x)
	x.inject(0) {|sum,i| sum + i }
end
def multiply(*x)
	x.inject {|sum,y| sum * y }
end