#!/usr/bin/env ruby

def bottle_string(number)
  if number > 1
    "#{number} bottles"
  elsif number == 1
    '1 bottle'
  else
    'no more bottles'
  end
end

def sing(number)
  if number > 0
    puts "#{bottle_string(number)} of beer on the wall, "\
    "#{bottle_string(number)} of beer."
    puts 'Take one down and pass it around, '\
    "#{bottle_string(number - 1)} of beer on the wall.\n\n"
    sing(number - 1)
  else
    puts 'No more bottles of beer on the wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
  end
end

sing(99)
