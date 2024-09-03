class Phrase

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    sentence_separated = @sentence.downcase.scan(/\b[\w']+\b/)
    sentence_separated.tally
  end
end
