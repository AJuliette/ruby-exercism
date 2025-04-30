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

  def self.recite(number_of_bottles, number_of_verses)
    (0...number_of_verses).map do |i|
      remaining_bottles = number_of_bottles - i
      first_line = "#{ NUMBER_TO_NAME[remaining_bottles].capitalize } green #{ remaining_bottles == 1 ? "bottle" : "bottles" } hanging on the wall,\n"
      second_line = "#{ NUMBER_TO_NAME[remaining_bottles].capitalize } green #{ remaining_bottles == 1 ? "bottle" : "bottles" } hanging on the wall,\n"
      third_line = "And if one green bottle should accidentally fall,\n"
      remaining_bottles_after_fall = remaining_bottles - 1
      fourth_line = "There'll be #{ NUMBER_TO_NAME[(remaining_bottles_after_fall)] } green #{ remaining_bottles_after_fall == 1 ? "bottle" : "bottles" } hanging on the wall.\n"
      first_line + second_line + third_line + fourth_line
    end.join("\n")
  end
end
