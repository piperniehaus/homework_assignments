#!/usr/bin/env ruby
class Verse
  attr_reader :number
  def initialize(number_of_bottles)
    @number = number_of_bottles
  end
  
  def bottle_string
    if @number > 1
      "#{@number} bottles"
    elsif @number == 1
      '1 bottle'
    else
      'no more bottles'
    end
  end

  def sing
    next_bottles = Verse.new(@number - 1)
    if @number > 0
      puts "#{bottle_string} of beer on the wall, #{bottle_string} of beer."
      print "Take one down and pass it around, "
      puts "#{next_bottles.bottle_string} of beer on the wall.\n\n"
      next_bottles.sing
    else
      puts 'No more bottles of beer on the wall, no more bottles of beer.'
      puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    end
  end
end

Verse.new(99).sing
