#!/usr/bin/env ruby

(1..100).each do |number|
  result = number
  if number % 15 == 0
    result = 'FizzBuzz'
  elsif number % 3 == 0
    result = 'Fizz'
  elsif number % 5 == 0
    result = 'Buzz'
  end

  puts result
end
