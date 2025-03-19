class Acronym
  def self.abbreviate(phrase)
    phrase.gsub('-', ' ').split(' ').map { |word| word[0] }.join.upcase
  end
end
