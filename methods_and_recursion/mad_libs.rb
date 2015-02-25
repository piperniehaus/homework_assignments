#!/usr/bin/env ruby

class Line
    attr_accessor :word
    attr_reader :word_type, :text
    def initialize text, word_type=''
      @word_type = word_type
      @text = text
    end
    def get_word previous_word_type=''
      if word_type == ''
        @word = ''
      elsif @word_type == previous_word_type
        puts "Give me another #{word_type}:"
        @word = gets.chomp
      elsif ['a','e','i','o','u'].include?(@word_type.downcase.slice(0,1))
        puts "Give me an #{word_type}:"
        @word = gets.chomp
      else
        puts "Give me a #{word_type}:"
        @word = gets.chomp
      end
    end
    def write
      @text + @word
    end
end

$lines = [
Line.new('A vacation is when you take a trip to some ', 'adjective'),
Line.new(" place\n with your ",''),
# Line.new(" family. Usually you go to some place that is near a/an\n",'noun'),
# Line.new(' or up on a/an ','noun'),
# Line.new("A good vacation place is one where you can ride\n",'plural noun'),
# Line.new('or play ','game'),
# Line.new(' or go hunting for ','plural noun'),
# Line.new('. I like to spend my time ','verb ending in ing'),
# Line.new(' or ','verb ending in ing'),
# Line.new(". When parents go on a vacation, \nthey spend their time eating three ",'plural noun'),
# Line.new(' a day, and fathers play golf, and mothers sit around ','verb ending in ing'),
# Line.new('. Last summer, my little brother fell in a/an _','noun'),
# Line.new(' and got poison ', 'plant'),
# Line.new(' all over his ', 'part of body'),
# Line.new('. My family is going to go to (the)','a place'),
# Line.new(", and I will practice \n",'verb ending in ing'),
# Line.new('. Parents need vacations more than kids because parents are always very ','adjective'),
# Line.new(' and because they have to work ','number'),
# Line.new(' hours every day all year making enough ', 'noun'),
]

def get_words line, previous_line_type=''
  line.get_word previous_line_type
  if($lines.index(line) < $lines.length - 1)
    next_line = $lines[$lines.index(line) + 1]
    get_words next_line, line.word_type
  else
    $lines.each do |line|
      print line.write
    end
  end
end

get_words $lines[0]


# $lines.each do |line|
#   puts line.word_type
# end
