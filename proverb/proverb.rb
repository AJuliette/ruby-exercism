class Proverb
  def initialize(*words, qualifier: nil)
    @words = words
    @qualifier = qualifier
  end

  def to_s
    length = @words.length
    @words.each_with_index.map do |word, index|
      if index != (length - 1)
        "For want of a #{ word } the #{ @words[index + 1] } was lost."
      else
        if @qualifier
          "And all for the want of a #{ @qualifier } #{ @words[0] }."
        else
          "And all for the want of a #{ @words[0] }."
        end
      end
    end.join("\n")
  end
end
