class BaseConverter
  def self.convert(input_base, digits, output_base)
    raise ArgumentError if input_base <= 1 || output_base <= 1 || digits.any? { |digit| digit < 0 } || digits.any? { |digit| digit >= input_base }
    return [0] if digits.empty? || (digits.join.to_i == 0)

    decimal_value = input_base != 10 ? convert_to_decimal(digits, input_base) : digits.join.to_i

    convert_to_base(decimal_value, output_base)
  end

  private

  def self.convert_to_decimal(digits, input_base)
    digits.reverse.map.with_index do |digit, index|
      digit * input_base ** index
    end.sum
  end

  def self.convert_to_base(decimal_value, output_base, output_digits = [])
    if decimal_value.zero?
      output_digits
    else
      remainder = decimal_value % output_base
      output_digits.unshift(remainder)
      decimal_value = decimal_value / output_base
      convert_to_base(decimal_value, output_base, output_digits)
    end
  end
end
