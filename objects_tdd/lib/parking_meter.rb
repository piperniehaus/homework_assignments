# Parking Meter
class ParkingMeter
  attr_reader :total_paid

  def initialize
    @total_paid = 0.0
    @start_time = Time.now.utc
  end

  def pay(payment)
    @total_paid += payment
    "You fed $#{format('%1.2f', payment)} to the meter."
  end

  def minutes_elapsed
    (Time.now - @start_time) / 60
  end

  def minutes_remaining
    (@total_paid * 60 - minutes_elapsed).floor
  end

  def check_meter
    "You have #{minutes_remaining} minutes remaining."
  end

  def meter_maid_check
    if minutes_remaining < 0
      fine = minutes_remaining * -3
      "Bummer! You got a $#{fine} ticket."
    else
      'The meter maid came and went.'
    end
  end
end
