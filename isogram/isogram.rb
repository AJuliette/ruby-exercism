class Isogram
  def self.isogram?(string)
    letters = string.downcase.scan(/\w/)
    letters.uniq.length == letters.length
  end
end
