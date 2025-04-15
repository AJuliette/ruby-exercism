class Nucleotide
  def initialize(strand)
    @strand = strand
    raise ArgumentError if strand =~ /[^ATCG]/
  end

  def self.from_dna(strand)
    new(strand)
  end

  def count(nucleotide)
    @strand.count(nucleotide)
  end

  def histogram
    empty_histogram = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    @strand.chars.each_with_object(empty_histogram) do |strand, empty_histogram|
      empty_histogram[strand] += 1
    end
  end
end
