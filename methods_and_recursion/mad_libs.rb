#!usr/bin/env ruby

class Word
  attr_reader :word_type, :word
  def initialize type
    @word_type = type
    @word = ''
  end

  def get_word previous_word_type
    end
    if @word_type == previous_word_type
      puts "Give me another #{word_type}:"
      @word = gets.chomp
    elsif ['a','e','i','o','u'].include?(@word_type.downcase.slice(0,1))
      puts "Give me an #{word_type}:"
      @word = gets.chomp
    else
      puts "Give me a #{word_type}:"
      @word = gets.chomp
    end
    return @word
  end

end

def write_line text, word, previous_word_type
  print text
  print word.get_word
  write_line text, word, word.word_type
end


lines = []
write_line "A vacation is when you take a trip to some ", Word.new('adjective') + " place"



lines.each do |l|
  puts l
end
# "with your #{Word.new('adjective')} family. ",
# "Usually you go to some place" ,
# "that is near a/an #{Word.new('noun')}" ,
# " or up on a/an #{Word.new('noun')}." ,
# "A good vacation place is one where ",
# "you can ride #{Word.new('plural noun')}",
# "or play GAME or go hunting for #{Word.new('plural noun')} . I like",
# "to spend my time #{Word.new('verb ending in ing')} ",
# "or #{Word.new('verb ending in ing')}.",
# "When parents go on a vacation, they spend their time eating",
# "three #{Word.new('plural noun')} a day, and fathers play golf, and mothers",
# "sit around #{Word.new('verb ending in ing')}. Last summer, my little brother",
# "fell in a/an _NOUN and got poison #{Word.new('plant')} all",
# "over his #{Word.new('part of body')}. My family is going to go to (the)",
# "A PLACE, and I will practice #{Word.new('verb ending in ing')}. Parents",
# "need vacations more than kids because parents are always very",
# "#{Word.new('adjective')} and because ",
# "they have to work #{Word.new('number')} hours every day all"

