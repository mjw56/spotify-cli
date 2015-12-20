def factorial(n)
  if n < 1
    raise "argument must be > 1"
  elsif n == 1
    1
  else
    n * factorial(n - 1)
  end
end

def multiply(a, b)
  a * b
end

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def divide(a, b)
  a / b
end

puts factorial(1)
puts factorial(5)
puts multiply(2, 2)
puts add(3, 3)
puts subtract(3, 4)
puts divide(4, 2)
