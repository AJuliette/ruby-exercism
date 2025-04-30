class InvalidCodonError < StandardError; end

class Translation
  CODON_TO_AMINO_ACID =
    {
      AUG: "Methionine",
      UUU: "Phenylalanine",
      UUC: "Phenylalanine",
      UUA: "Leucine",
      UUG: "Leucine",
      UCU: "Serine",
      UCC: "Serine",
      UCA: "Serine",
      UCG: "Serine",
      UAU: "Tyrosine",
      UAC: "Tyrosine",
      UGU: "Cysteine",
      UGC: "Cysteine",
      UGG: "Tryptophan",
      UAA: "STOP",
      UAG: "STOP",
      UGA: "STOP"
    }

  def self.of_rna(strand)
    array = []
    strand.chars.each_slice(3) do |codon_array|
      amino_acid = CODON_TO_AMINO_ACID[codon_array.join.to_sym]
      break if amino_acid == "STOP"
      array << amino_acid
    end
    raise InvalidCodonError if array.include?(nil) && !strand.empty?
    array
  end
end
