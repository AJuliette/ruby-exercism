class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    @string.downcase.scan(/\b[\w']+\b/).tally
  end
end
