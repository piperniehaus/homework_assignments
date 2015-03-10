#!/usr/bin/env ruby

# Text of madlib
text = []
# Descriptions of the parts of speech For users to choose words
parts_of_speech = []
# User-selected words
words = []

# Ask user for word based on part of speech needed
def get_word(part_of_speech, previous_part_of_speech)
  part_of_speech.downcase!
  previous_part_of_speech.downcase!

  if part_of_speech == previous_part_of_speech
    puts "Give me another #{part_of_speech}:"
  elsif %w('a e i o u').include?(part_of_speech[0])
    puts "Give me an #{part_of_speech}:"
  else
    puts "Give me a #{part_of_speech}:"
  end
  gets.chomp
end

# Write out the text
text.push('A vacation is when you take a trip to some ')
parts_of_speech.push('adjective')

text.push(" place\nwith your ")
parts_of_speech.push('adjective')

text.push(" family. Usually you go to some place\nthat is near a/an ")
parts_of_speech.push('noun')

text.push(' or up on a/an ')
parts_of_speech.push('noun')

text.push(".\nA good vacation place is one where you can ride ")
parts_of_speech.push('plural noun')

text.push("\nor play ")
parts_of_speech.push('game')

text.push(' or go hunting for ')
parts_of_speech.push('plural noun')

text.push(". I like\nto spend my time ")
parts_of_speech.push("verb ending in 'ing'")

text.push(' or ')
parts_of_speech.push("verb ending in 'ing'")

text.push(".\nWhen parents go on a vacation,"\
" they spend their time eating\nthree ")
parts_of_speech.push('plural noun')

text.push(' a day, and fathers play golf, '\
"and mothers\nsit around ")
parts_of_speech.push("verb ending in 'ing'")

text.push(". Last summer, my little brother\nfell in a/an ")
parts_of_speech.push('noun')

text.push(' and got poison ')
parts_of_speech.push('plant')

text.push(" all\nover his ")
parts_of_speech.push('part of body')

text.push(". My family is going to go to (the)\n")
parts_of_speech.push('place')

text.push(', and I will practice ')
parts_of_speech.push("verb ending in 'ing'")

text.push(". Parents\nneed vacations more than kids "\
"because parents are always very\n")
parts_of_speech.push('adjective')

text.push(' and because they have to work ')
parts_of_speech.push('number')

text.push("\nhours every day all year making enough ")
parts_of_speech.push('plural noun')

text.push(" to pay\nfor the vacation.")

# Get a word for each part of speech entry
parts_of_speech.each_with_index do |part_of_speech, key|
  words.push(get_word(part_of_speech, parts_of_speech[key - 1]))
end

# Print text and user-submitted words
text.each_with_index do |line, key|
  print line
  print words[key]
end
