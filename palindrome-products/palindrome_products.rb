class Palindromes
  def initialize(max_factor:, min_factor:1)
    @max_factor = max_factor
    @min_factor = min_factor

    raise ArgumentError, "min must be <= max" if @min_factor > @max_factor 
  end

  def generate
    @palindromes_and_factors = (@min_factor..@max_factor).each_with_object({}) do |a, hash|
      (a..@max_factor).each do |b|
        product = a * b
        if palindrome?(product)
          hash[product] ||= []
          hash[product] << [a, b]
        end
      end    
    end
    self
  end

  def smallest
    min = @palindromes_and_factors.keys.min
    @value_and_factors = { value: min, factors: (@palindromes_and_factors[min] || []) }
    self
  end

  def largest
    max = @palindromes_and_factors.keys.max
    @value_and_factors = { value: max, factors: (@palindromes_and_factors[max] || []) }
    self
  end

  def value
    @value_and_factors[:value]
  end

  def factors
    @value_and_factors[:factors]
  end

  private

  def palindrome?(number)
    number.to_s == number.to_s.reverse
  end
end
