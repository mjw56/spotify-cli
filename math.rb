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
  raise "multiply must take two arguments" if b == nil
  a * b
end

puts factorial(1)
puts factorial(5)
puts factorial(0)
puts multiply(2, 2)
puts multiply (2)
