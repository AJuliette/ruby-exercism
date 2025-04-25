class Palindromes
  attr_reader :smallest, :largest

  def initialize(min_factor:1, max_factor:)
    raise ArgumentError, "min must be <= max" unless min_factor <= max_factor

    @min_factor = min_factor
    @max_factor = max_factor
  end

  def generate
    lowest_product = @min_factor ** 2
    highest_product = @max_factor ** 2

    @smallest = find_palindrome(lowest_product.upto(highest_product))
    @largest = find_palindrome(highest_product.downto(lowest_product))
  end

  def find_palindrome(enum)
    palindrome = Palindrome.new(nil, [])
    enum.each do |candidate|
      next unless Palindromes.is_palindrome?(candidate)

      factors = factors(candidate)

      unless factors.empty?
        palindrome = Palindrome.new(candidate, factors)
        break
      end
    end
    palindrome
  end

  def factors(number)
    (@min_factor..Math.sqrt(number)).each_with_object([]) do |factor, factors|
      other, mod = number.divmod factor
      factors << [factor, other] if mod.zero? && other.between?(@min_factor, @max_factor)
    end
  end

  def self.is_palindrome?(number)
    number.to_s == number.to_s.reverse
  end
end

class Palindrome
  attr_reader :value, :factors

  def initialize(value, factors)
    @value = value
    @factors = factors
  end
end
