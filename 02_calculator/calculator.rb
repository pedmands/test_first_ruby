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
def power (x,y)
	return x**y
end
def factorial(x)
	if x == 0
	  return 1
	else
	  x.downto(1).reduce(:*)
    end
end