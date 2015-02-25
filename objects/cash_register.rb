#!/user/bin/env ruby

# Calculate money flow
class CashRegister
  def initialize
    @total = 0.0
  end
  # purchase method takes a floating number and adds that to the total
  def purchase(price)
    @total += price
  end
  # total method returns how much is owed
  def total
    format('%.2f', @total)
  end
  # pay method takes one floating number for how much is paid,
  # should return how much change is given
  def pay(amount_paid)
    if amount_paid >= @total
      response = "Your change is $#{format('%.2f', amount_paid - @total)}"
      @total = 0
      response
    else
      @total -= amount_paid
      "Your new total is $#{format('%.2f', @total)}"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  # Example register transaction 1
  register = CashRegister.new
  puts register.total
  puts register.purchase(3.78)
  puts register.total
  puts register.pay(5.00)
  puts register.total

  puts ''
  puts ''

  # Example register transaction 2
  register_2 = CashRegister.new
  puts register_2.total
  puts register_2.purchase 3.78
  puts register_2.purchase 5.22
  puts register_2.total
  puts register_2.pay 5.00
  puts register_2.total
  puts register_2.pay 5.00
  puts register_2.total
end
