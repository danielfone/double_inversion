#!/usr/bin/env ruby

def f(n)
  
end

(-10..10).each do |n|
  assert_returns :f, n, (-1 * n)
end