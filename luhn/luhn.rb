class Luhn
  def self.valid?(number)
    stripped_number = number.gsub(/\s/, '')
    return false if stripped_number.length <= 1 || !stripped_number.scan(/\D/).empty?
    digits = number.scan(/\d/).map(&:to_i).reverse
    digits.each_with_index do |n, index|
      next if index.even?
      doubled = n * 2
      digits[index] = doubled > 9 ? doubled - 9 : doubled
    end
    (digits.sum % 10).zero?
  end
end
