#!/usr/bin/env ruby

require './micro_test'

def f(n)
  case n
  when Integer
    lambda { n * -1 }
  else
    n.call
  end
end

MicroTest.test do |test|
  (-10..10).each do |n|
    test.assert_returns n, f(f(n)), (-1 * n)
  end
end
