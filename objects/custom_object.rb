#!/usr/bin/exec ruby

# ParkingMeter tracks your time in a parking space
# Versus the amount you paid
# Watch out for the meter maid!
class ParkingMeter
  def initialize
    @total_paid = 0.0
    @start_time = Time.new
  end

  # add money to the meter
  def pay(payment)
    @total_paid += payment
    "You fed $#{payment} to the meter."
  end

  # The parking space costs $1 for 60 min
  # Return the number of minutes remaining
  def minutes_remaining
    time_elapsed = (Time.new - @start_time) / 60
    (@total_paid * 60 - time_elapsed).floor
  end

  # Check how much time is left on the meter
  def check_meter
    puts "You have #{minutes_remaining} minutes remaining."
  end

  # The meter maid checks if you have overstayed your meter
  # If so, he / she writes a ticket
  # The fine is 3x the number of minutes overstayed
  def meter_maid_check
    if minutes_remaining < 0
      fine = minutes_remaining * -3
      "Bummer! You got a $#{fine} ticket."
    else
      'The meter maid came and went.'
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  parking_place = ParkingMeter.new
  5.times do
    puts parking_place.pay 0.05
  end
  puts parking_place.check_meter
  2.times do
    puts parking_place.pay 0.05
  end
  puts parking_place.check_meter
  puts parking_place.meter_maid_check
end
