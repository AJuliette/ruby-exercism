class BottleSong
  NUMBER_TO_NAME = {
    10 => "ten",
    9 => "nine",
    8 => "eight",
    7 => "seven",
    6 => "six",
    5 => "five",
    4 => "four",
    3 => "three",
    2 => "two",
    1 => "one",
    0 => "no"
  }

  def self.recite(starting_bottles, number_of_verses)
    number_of_verses.times.map do |i|
      remaining_bottles = starting_bottles - i
      remaining_bottles_after_fall = remaining_bottles - 1
      verse(remaining_bottles, remaining_bottles_after_fall)
    end.join("\n")
  end

  def self.verse(remaining_bottles, remaining_bottles_after_fall)
    <<~TEXT
      #{ bottle_phrase(remaining_bottles).capitalize } hanging on the wall,
      #{ bottle_phrase(remaining_bottles).capitalize } hanging on the wall,
      And if one green bottle should accidentally fall,
      There'll be #{bottle_phrase(remaining_bottles_after_fall).downcase} hanging on the wall.
    TEXT
  end

  def self.bottle_phrase(count)
    word = NUMBER_TO_NAME[count]
    bottle = count == 1 ? "bottle" : "bottles"
    "#{word} green #{bottle}"
  end
end
