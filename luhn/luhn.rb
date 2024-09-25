class Luhn
  def self.valid?(number)
    return false unless number.strip.size > 1
    return false if number.include?(":") || number.include?("%")
    return false if number.count("a-zA-Z") > 0

    array_of_numbers = number.chars.reverse.reject { |c| c == " " }

    sum_of_every_second_digit_doubled = (1..array_of_numbers.length).step(2).each_with_object([]) do |index, array|
      number = if array_of_numbers[index].to_i * 2 > 9
                array_of_numbers[index].to_i * 2 - 9
              else 
                array_of_numbers[index].to_i * 2
              end
      array << number
    end.sum

    sum_of_other_digits = (0..array_of_numbers.length).step(2).each_with_object([]) do |index, array|
      array << array_of_numbers[index].to_i
    end.sum

    return true if (sum_of_every_second_digit_doubled + sum_of_other_digits) % 10 == 0
    false
  end
end
