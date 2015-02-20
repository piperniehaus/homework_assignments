#!/usr/bin/env ruby

# # This program should output the numbers 1 through 100, however:
# If evenly divisible by 3, print Fizz
# If evenly divisible by 5, print Buzz
# If evenly divisible by 3 and 5, print FizzBuzz
# Otherwise, print out the number

(1..100).each do |n|
  r_3 = n % 3
  output = 'Fizz' * (1 - (r_3 / (r_3 + 1.0))).floor

  r_5 = n % 5
  output += 'Buzz' * (1 - (r_5 / (r_5 + 1.0))).floor

  r = (n % 3) * (n % 5)
  output += n.to_s * (r / (r + 1.0)).ceil

  puts output.strip
end
