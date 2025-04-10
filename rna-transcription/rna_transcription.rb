class Complement
  def self.of_dna(dna)
    return dna if dna.empty?
    dna.chars.map do |char|
      case char
      when 'C' then 'G'
      when 'G' then 'C'
      when 'T' then 'A'
      when 'A' then 'U'
      end
    end.join
  end
end
