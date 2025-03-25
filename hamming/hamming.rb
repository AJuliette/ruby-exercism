class Hamming
  def self.compute(dna_strand_one, dna_strand_two)
    raise ArgumentError if dna_strand_one.length != dna_strand_two.length

    dna_strand_one.chars.zip(dna_strand_two.chars).count { |char_one, char_two| char_one != char_two }
  end
end
