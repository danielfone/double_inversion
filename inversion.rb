#!/usr/bin/env ruby

def assert_returns(input, actual, expected)
  if actual == expected
    puts "#{input.inspect} => #{actual.inspect}"
  else
    puts "Expected #{input.inspect} => #{expected.inspect}: got #{actual.inspect}"
  end
end

#---

def f(n)
  
end

(-10..10).each do |n|
  assert_returns n, f(n), (-1 * n)
end
