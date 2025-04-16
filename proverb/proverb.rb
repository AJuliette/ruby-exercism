class Proverb
  def initialize(*words, qualifier: nil)
    @words = words
    @qualifier = qualifier
  end

  def to_s
    lines = []
    @words.each_cons(2) do |first, second|
      lines.push("For want of a #{ first } the #{ second } was lost.")
    end
    first_item = @qualifier ? "#{ @qualifier } #{ @words.first }" : @words.first
    lines.push("And all for the want of a #{ first_item }.")
    lines.join("\n")
  end
end
