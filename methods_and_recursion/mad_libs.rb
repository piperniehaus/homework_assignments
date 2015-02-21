#!usr/bin/env ruby

class Word
  attr_reader :word_type, :word
  def initialize type
    @word_type = type
    @word = ''
  end

  def get_word previous_word_type=''
    if @word_type == previous_word_type
      puts "Give me another #{word_type}:"
      # @word = gets.chomp
    elsif ['a','e','i','o','u'].include?(@word_type.downcase.slice(0,1))
      puts "Give me an #{word_type}:"
      # @word = gets.chomp
    else
      puts "Give me a #{word_type}:"
      # @word = gets.chomp
    end
    # return @word
  end

end

# class Line
#   attr_accessor :word
#   def initialize text, word
#     @text = text
#     @word = word
#   end
#
#   def write_line previous_word_type
#     print text
#     print word.get_word previous_word_type
#   end
# end
#
#
#
# lines = [
# Line.new('A vacation is when you take a trip to some ', Word.new('adjective')),
# Line.new("with your ",Word.new('adjective')),
# Line.new(" family. Usually you go to some place that is near a/an ",Word.new('noun')),
# Line.new(" or up on a/an ",Word.new('noun')),
# Line.new("A good vacation place is one where you can ride ",Word.new('plural noun')),
# Line.new("or play GAME or go hunting for ",Word.new('plural noun')),
# Line.new(". I like to spend my time ",Word.new('verb ending in ing')),
# Line.new("or ",Word.new('verb ending in ing')),
# Line.new(". When parents go on a vacation, they spend their time eating three ", Word.new('plural noun')),
# Line.new(" a day, and fathers play golf, and mothers sit around ",Word.new('verb ending in ing')),
# Line.new(". Last summer, my little brother fell in a/an _NOUN and got poison ", Word.new('plant')),
# Line.new("all over his ",Word.new('part of body')),
# Line.new(". My family is going to go to (the)",Word.new('a place')),
# Line.new(", and I will practice ",Word.new('verb ending in ing')),
# Line.new(". Parents need vacations more than kids because parents are always very",Word.new('adjective')),
# Line.new(" and because they have to work ",Word.new('number')),
# Line.new(" hours every day all year making enough ", ''),
# Line.new("to pay for the vacation",Word.new(''))
# ]
#
# lines.each do |line|
#   line.word.get_word
# end
#
# lines.each do |line|
#   line.write_line
# end
