module ArmstrongNumbers
  def self.include?(number)
    lenght = number.to_s.size
    number.digits.sum { |digit| digit ** lenght } == number
  end
end
