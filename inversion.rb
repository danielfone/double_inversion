#!/usr/bin/env ruby

def assert_returns(input, actual, expected)
  if actual == expected
    pass "#{input.inspect} => #{actual.inspect}"
  else
    fail "Expected #{input.inspect} => #{expected.inspect}: got #{actual.inspect}"
  end
end

def pass(message)
  puts_color message, '32'
end

def fail(message)
  puts_color message, '31'
end

def puts_color(message, color_code)
  puts "\e[0;#{color_code}m" << message << "\e[0m"
end

#---

def f(n)
  
end

(-10..10).each do |n|
  assert_returns n, f(n), (-1 * n)
end
