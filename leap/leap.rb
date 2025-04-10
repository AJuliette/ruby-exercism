class Year
  def self.leap?(year)
    return true if divisible_by_4?(year) && !divisible_by_100?(year) || divisible_by_4?(year) && divisible_by_100?(year) && divisible_by_400?(year)
    false
  end

  def self.divisible_by_4?(year)
    (year % 4).zero?
  end

  def self.divisible_by_100?(year)
    (year % 100).zero?
  end

  def self.divisible_by_400?(year)
    (year % 400).zero?
  end
end
