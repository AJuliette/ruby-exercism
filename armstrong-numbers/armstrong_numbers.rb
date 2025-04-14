require 'pry'
module ArmstrongNumbers
  def self.include?(number)
    lenght = number.to_s.size
    sum_of_digits_powered = number.to_s.chars.reduce(0) do |sum, digit|
      sum = sum + digit.to_i ** lenght
    end
    number == sum_of_digits_powered
  end
end
