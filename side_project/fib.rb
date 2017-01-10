def fib(num)
  if num < 2
    num
  else
    fib(num - 2 ) + fib(num - 1 )
  end
end

puts fib(4)
puts fib(3)
puts fib(2)
puts fib(1)
puts fib(0)
