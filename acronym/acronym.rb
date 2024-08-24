class Acronym
  def self.abbreviate(phrase)
    phrase_separated = phrase.split(/[\s, -]/).reject { |c| c.empty? }
    phrase_separated.each_with_object([]) { |word, arr| arr << word[0].capitalize }.join
  end
end
