class Series
  def initialize(string_of_digits)
    @string_of_digits = string_of_digits
  end

  def slices(length)
    raise ArgumentError if length > @string_of_digits.size
    @string_of_digits.chars.each_cons(length).map(&:join)
  end
end
