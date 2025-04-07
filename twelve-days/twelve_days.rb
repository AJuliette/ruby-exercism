class TwelveDays
  GIFTS = [
    "a Partridge in a Pear Tree.\n",
    "two Turtle Doves, and ",
    "three French Hens, ",
    "four Calling Birds, ",
    "five Gold Rings, ",
    "six Geese-a-Laying, ",
    "seven Swans-a-Swimming, ",
    "eight Maids-a-Milking, ",
    "nine Ladies Dancing, ",
    "ten Lords-a-Leaping, ",
    "eleven Pipers Piping, ",
    "twelve Drummers Drumming, "
  ].freeze

  DAYS = [
    "first",
    "second",
    "third",
    "fourth",
    "fifth",
    "sixth",
    "seventh",
    "eighth",
    "ninth",
    "tenth",
    "eleventh",
    "twelfth"
  ].freeze

  def self.song
    (0..11).to_a.map do |n|
      gifts = GIFTS.first(n + 1).reverse.join
      "On the #{ DAYS[n] } day of Christmas my true love gave to me: #{ gifts }"
    end.join("\n")
  end
end