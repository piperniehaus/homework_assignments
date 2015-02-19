#!/usr/bin/env ruby
SEC_PER_MIN = 60
MIN_PER_HOUR = 60
HRS_PER_DAY = 24
DAY_PER_WK = 7
DAY_PER_YR = 365

SEC_PER_HR = SEC_PER_MIN * MIN_PER_HOUR
SEC_PER_DAY = SEC_PER_HR * HRS_PER_DAY
SEC_PER_WK = SEC_PER_DAY * DAY_PER_WK
SEC_PER_YR = SEC_PER_DAY * DAY_PER_YR

# Add an age in seconds method to Fixnum
class Fixnum
  def age_in_sec
    self * SEC_PER_YR
  end
end

puts 'There are 60 seconds in a minute'
puts 'There are 60 minutes in an hour'
puts 'There are 24 hours in a day'
puts 'There are 7 days in a week'
puts 'That means there are:'
puts "  #{SEC_PER_HR} seconds in an hour,"
puts "  #{SEC_PER_DAY} seconds in a day,"
puts "  #{SEC_PER_WK} seconds in a week"
puts 'That means when you turn 20, '\
"you've been alive for #{20.age_in_sec} seconds,"
puts 'and if you make it to 100,'\
" you will have lived #{100.age_in_sec} seconds. "\
'Make them count!'
