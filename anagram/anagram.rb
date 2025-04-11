class Anagram
  def initialize(word)
    @word = word.downcase
    @word_chars_sorted = word.downcase.chars.sort
  end

  def match(words)
    words.select do |word_to_compare|
      next if @word == word_to_compare.downcase
      word_to_compare if word_to_compare.downcase.chars.sort == @word_chars_sorted
    end
  end
end
