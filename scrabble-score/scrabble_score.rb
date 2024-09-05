class Scrabble
  def initialize(string)
    @string = string
  end

  def score
    return 0 if @string.empty?

    @string.chars.map do |char|
      value_of_char(char.upcase)
    end.inject(:+)
  end

  def value_of_char(char)
    case char
    when "A", "E", "I", "O", "U", "L", "N", "R", "S", "T"
      1
    when "D", "G"
      2
    when "B", "C", "M", "P"
      3
    when "F", "H", "V", "W", "Y"
      4
    when "K"
      5
    when "J", "X"
      8
    when "Q", "Z"
      10
    end
  end
end
