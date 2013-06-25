#!/usr/bin/env ruby

def assert_returns(input, actual, expected)
  raise "Expected #{input} to produce #{expected}: got #{actual}" if actual != expected
end

#---

def f(n)
  
end

(-10..10).each do |n|
  assert_returns n, f(n), (-1 * n)
end
