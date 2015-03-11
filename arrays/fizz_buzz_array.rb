#!/usr/bin/env ruby

numbers = (1..100).to_a

fizz_buzz_numbers = numbers.map do |number|
  result = number
  if number % 15 == 0
    result = 'FizzBuzz'
  elsif number % 3 == 0
    result = 'Fizz'
  elsif number % 5 == 0
    result = 'Buzz'
  end

  result
end

puts fizz_buzz_numbers
