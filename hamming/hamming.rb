class Hamming

  def self.compute(dna_1, dna_2)
    raise ArgumentError if dna_1.length != dna_2.length
    different_char = 0
    dna_1_chars = dna_1.chars
    dna_2_chars = dna_2.chars
    dna_1_chars.each_with_index do |dna_1_char, index|
      if dna_1_char != dna_2_chars[index]
        different_char += 1
      end
    end
    different_char
  end
end
