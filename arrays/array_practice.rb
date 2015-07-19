#!/usr/bin/env ruby

numbers = (1..10).to_a

puts "#{numbers.join('...')}..."
puts "T-#{numbers.reverse.join(', ')}...  BLASTOFF!"
puts "The last element is #{numbers.last}"
puts "The first element is #{numbers.first}"
puts "The third element is #{numbers[2]}"
puts "The element with an index of 3 is #{numbers[3]}"
puts "The second from last element is #{numbers[-2]}"
puts "The first four elements are '#{numbers.first(4).join(', ')}'"
print "If we delete 5, 6 and 7 from the array, we're left with ["
puts numbers.reject!{|number| (5..7).include?(number)}.join(',')+']'
print "If we add 5 at the beginning of the array, we're left with ["
puts numbers.unshift(5).join(',')+']'
print "If we add 6 at the end of the array, we're left with ["
puts numbers.push(6).join(',')+']'
puts "Only the elements #{numbers.select{|number| number > 8}} are > 8."
puts "If we remove all the elements, then the length of the array is #{numbers.clear.length}"




