#!/usr/bin/env ruby

def assert_returns(input, actual, expected)
  if actual == expected
    @pass_count += 1
    puts_pass "#{input.inspect} => #{actual.inspect}"
  else
    @fail_count += 1
    puts_fail "Expected #{input.inspect} => #{expected.inspect}: got #{actual.inspect}"
  end
end

def puts_pass(message)
  puts_color message, '32'
end

def puts_fail(message)
  puts_color message, '31'
end

def puts_color(message, color_code)
  puts "\e[0;#{color_code}m" << message << "\e[0m"
end

#---

def f(n)
  -10
end

@pass_count = 0
@fail_count = 0

(-10..10).each do |n|
  assert_returns n, f(n), (-1 * n)
end

puts "---"
puts_pass "Passed: #{@pass_count}" if @pass_count > 0
puts_fail "Failed: #{@fail_count}" if @fail_count > 0
