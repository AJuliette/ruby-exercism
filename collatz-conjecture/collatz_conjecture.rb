class CollatzConjecture
  def self.steps(number)
    raise ArgumentError if number <= 0
    steps = 0
    while (number != 1) do
      if number.even?
        number = number / 2
      else
        number = number * 3 + 1
      end
      steps += 1
    end
    steps
  end
end
