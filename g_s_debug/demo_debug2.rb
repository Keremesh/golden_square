def factorial(n)
  product = 1
  binding.irb
  while n > 0
    binding.irb # Mystery new line!
    n -= 1
    binding.irb
    product *= n
    binding.irb
  end
  binding.irb
  product
end

p factorial(5)