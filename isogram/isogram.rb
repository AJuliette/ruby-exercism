class Isogram
  def self.isogram?(string)
    string = string.downcase.gsub("-", "").gsub(" ", "")
    string.chars == string.chars.uniq
  end
end